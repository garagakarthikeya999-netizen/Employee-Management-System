sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageBox"
], (Controller, MessageBox) => {
    "use strict";

    return Controller.extend("com.demo.empmgmtui.controller.View1", {
        onInit() {
        },
        onCreate: function () {
            var listBinding = this.byId("EmpTable").getBinding("items");
            var newMemory = listBinding.create();
            var dialog = this.loadFragment;
            dialog.open();
            dialog.setBindingContext(newMemory);
            await newMemory.created();
            console.log("New EMployee data created");
            console.log(newMemory.getObject());
            
        },
        onSave:function(){
            var oModel = this.getOwnerComponent().getModel();
            oModel.submitBatch("EMpGrp");
            this.loadFragment.close();

        },
        loadFragment:function(){
            if(!this.dialog){
                this.dialog = sap.ui.xmlfragments(this.getview().getId(),"com.demo.empmgmtui.view.EmpCreate",this);
                this.getView().addDependent(this.dialog);
            }
            return this.dialog ; 

        },
        onClose:function(){
            this.dialog.close();
        }
    
    }); 
});
//using EmpMgmtService as service from '../../srv/emp-srv';
//using EmployeeService from '../../srv/emp-srv';
//using EmployeeService as service from '../../srv/emp-srv';

using EmpMgmtService from '../../srv/emp-srv';

annotate EmpMgmtService.Employees with @(
    UI.LineItem: [
        {
            $Type: 'UI.DataField',
            Value: firstName,
            Label: 'First Name'
        },
        {
            $Type: 'UI.DataField',
            Value: lastName,
            Label: 'Last Name'
        },
        {
            $Type: 'UI.DataField',
            Value: email,
            Label: 'Email'
        },
        {
            $Type: 'UI.DataField',
            Value: department,
            Label: 'Department'
        },
        {
            $Type: 'UI.DataField',
            Value: salary,
            Label: 'Salary'
        }
    ]
);
using {empdb as db} from '../db/schema';

service EmpMgmtService {
    entity Employees as projection on db.Employees;


}

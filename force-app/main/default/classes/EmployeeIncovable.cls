public with sharing class EmployeeIncovable {
    @InvocableMethod(label ='Send Employee Information'
        description = 'Post the newly created employee records into vender system'
        category= 'Employee')
        public static void sendEmployees(List<Id> employeeIds) {
            for (Id employeeId : employeeIds) {
                 RestCallouts.postEmployee(employeeId);
            }
    }
}
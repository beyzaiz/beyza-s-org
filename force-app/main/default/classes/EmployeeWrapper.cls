public with sharing class EmployeeWrapper {
    public integer error;
    public string msg;
    public List<Employee> data;

    public class Employee {
        public Integer id;
        public String username;
        public String name;
        public String email;
        public String gender;
        public String designation;
        public String complete_address;
        public string phone_number;

    }
}
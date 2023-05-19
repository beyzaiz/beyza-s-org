public class DML_Assign {
    public static void  insert_dml() {
        Account acc = new Account();
        acc.Name = 'Beyza Assignmet 1';
        insert acc;
        system.debug(acc);
        Account accN = new Account();
        accN.Name = 'Beyza Assignment 2';
        insert accN;
        system.debug(accN);
        
    }
    public static void updating_dml() {
        Account acc2 = new Account();
        acc2.Name = 'Account Created';
        insert acc2;
        system.debug(acc2);
    }
    public static void updating_dm2() {
        Account acc2 = [select id, name from Account where name like 'Account Created%' limit 1];
        acc2.Name = 'Account Updated';
        update acc2;
        system.debug(acc2);
    }
    
}
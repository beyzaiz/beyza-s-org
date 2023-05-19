public class DML_Assign1 {
    public static void insertRecords() {
        List<Account> insertNewRecords = new List<Account>();
        for (Integer i = 0; i < 20; i++) {
            account a = new account();
            a.name = 'Test Account Created';
            insertNewRecords.add(a);
        }
        if (!insertNewRecords.isEmpty()) {
           insert insertNewRecords; 
        }
    }

    public static void updateRecords() {
        List<Account> listAccount = [select Id, Name from Account order by CreatedDate desc limit 20];
        for (account eachAcc : listAccount) {
            eachAcc.name = eachAcc.name + 'Account Created Updated';
        }
        update listAccount;
    }
}
public with sharing class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsite(list<Id>accIds) {
        List<Account> listAccount = [select id, website from Account where id in : accIds];
        for (account eachAccount : listAccount) {
            eachAccount.Website = 'www.softinnovas.com';
        }
        update listAccount;
    
    
    }
}
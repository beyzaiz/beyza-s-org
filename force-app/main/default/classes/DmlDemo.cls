public class DmlDemo {
    public static void dmlDemoInsert_stndObj1() {
     //1. create new instance
     account acc = new account();
     //2. set field values
     acc.Name = 'Softinnovas';
     //final
     insert acc; //this will create a new record.
    }
    public static void dmlDemoInsert_cstmObj() {
     Salesforce_Project__c sp = new Salesforce_Project__c();
     sp.Project_Name__c = 'Learn dml';
     sp.Description__c = 'learn dml batch14';
     sp.Status__c = 'New';
 
     insert sp;
    }
    public static void dmlUpdateDemo_stndObj1() {
     Account ac = new account();
     ac.Name = 'Salesforce';
     system.debug('before inserting ac ' + ac);
     insert ac;
     system.debug('record is inserted now ac: ' + ac);
 
     //we now have ID in accounts instane 'ac'
     //we need ID if we want to update a record. 
     ac.Name = 'Salesforce Inc.';
     //update
     update ac;
    }
    public static void dmlUpdateDemo_stndObj2() {
        account acc = [select id, name from account where name like 'Softinnovas%' limit 1];
        acc.Name = 'Softinnovas Inc.';
        acc.Phone = '9746379409';
        update acc;
        system.debug('acc '+acc);
    }
    public static void dmlInsertDemo_stndObj2() {
        account acc = [select id, name from account where name like 'Softinnovas%' limit 1];
        contact c = new Contact();
        c.LastName = 'Biden';
        c.AccountId = acc.Id;
        insert c;

    }
    public static void dmlDemoInsert_cstmObj2() {
        Salesforce_Project__c sp = [select id from Salesforce_Project__c order by createddate desc limit 1];
        Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
        newST.Subject__c = 'create related record via apex';
        newST.Priority__c = 'High';
        newST.Status__c = 'New';
        newST.Requested_by_date__c = date.today();
        newST.Salesforce_Project__c = sp.Id;
        insert newST;
        
    }
    public static void dmlDemoMultipleInsert_right1() {
        List<account> listAccount = new list<account>();
  
        account acc1 = new account();
        acc1.Name = 'Bulk acc1';
        acc1.ShippingCity = 'New York';
        acc1.Active__c = 'No';
        listAccount.add(acc1);
  
        account acc2 = new account();
        acc2.Name = 'Bulk acc2';
        acc2.ShippingCity = 'DC';
        acc2.Active__c = 'Yes';
        listAccount.add(acc2);
  
        account acc3 = new account();
        acc3.Name = 'Bulk acc3';
        acc3.ShippingCity = 'DC';
        acc3.Active__c = 'Yes';
        listAccount.add(acc3);
  
        //insert list
        insert listAccount;
     }
     public static void dmlDemoMultipleInsert_right2() {
        List<Account> insertAccountList = new List<Account>();
        for (Integer i = 0; i< 166; i++){
            account a = new account();
            a.Name = 'Softinnoavas v'+i;
            a.Phone = '93465893'+i;
            a.AccountNumber = 'rt' +i;
            a.Active__c = 'Yes';
            insertAccountList.add(a);
        }
        if (!insertAccountList.isEmpty()) {
            insert insertAccountList;
        }
     }
     public static void dmlDemoMultipleUpdate_right1() {
        List<Account>listAccount = [select id, name from account order by createddate desc limit 50];
        for (account eachAcc : listAccount) {
            eachAcc.name = eachAcc.Name + 'B.0';

        }
        update listAccount;
     }

     public static void dmlDemoMultipleUpdate_right2() {
        list<account> listAccount = [select id, name,Active__c from account];
        list<account> updateAccountList = new list<account>();

        for (account eachAcc : listAccount) {
           if (eachAcc.Active__c == 'Yes') {
              eachAcc.Name = eachAcc.Name + ' Yy';
              updateAccountList.add(eachAcc);
           } else if(eachAcc.Active__c == null){
              eachAcc.Name = eachAcc.Name + ' Nn';
              updateAccountList.add(eachAcc);
           }
        }
        if (!updateAccountList.isEmpty()) {
           update updateAccountList;
        }
     }
}
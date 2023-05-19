@isTest
public class AccountTriggerTest {
    @isTest
    private static void testMethod1() {
        //how to test trigger
            //create/update/delete/undelete records.
        Account acc = new account();
        acc.Name = 'test 1';
        acc.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'test 2';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'test 3';
        acc3.Industry = 'Banking';
        List<Account>listAcc = new List<Account>{acc,acc2,acc3};
        insert listAcc;
    }
    @isTest
    private static void testAccountUpdate() {
        Account acc = new account();
        acc.Name = 'test 1';
        acc.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'test 2';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'test 3';
        acc3.Industry = 'Banking';
        List<Account>listAcc = new List<Account>{acc,acc2,acc3};
        insert listAcc;
        for (Account eachAc : listAcc) {
            eachAc.Description = 'test update';
        
        }
        update listAcc;
    }
}
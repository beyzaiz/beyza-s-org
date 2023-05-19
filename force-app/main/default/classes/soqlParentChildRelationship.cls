public class soqlParentChildRelationship {
    public static void childToParent () {
        list<Contact> lstcontact = [select id, name, account.name, Account.ID from contact];
        for (contact eachContact : lstcontact) {
            system.debug('Contact name '+eachContact.name+ 'Its account name is '+eachContact.account.name);
        }
       
    }
    public static void parentToChild() {
        List<Account>lstaccount =[select id, name, (select id, name from Contacts) from account];
        for (account eachAccount : lstaccount) {
            system.debug('Account name is '+ eachAccount.name + 'and Acccount Id number is '+ eachAccount.id);
            system.debug('......................');
            List<Contact>eachAccountCon = eachAccount.Contacts;
            for (contact eachContact : eachAccount.Contacts) {
                system.debug('contact id is '+ eachContact.name);
            }
            system.debug('__________________');
            
        }

        
    }
}
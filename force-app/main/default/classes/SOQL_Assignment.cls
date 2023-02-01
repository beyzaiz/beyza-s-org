public class SOQL_Assignment {
    public static void soql_WhereClause() {
        List<Contact>lstcontact = [select name from contact where LastName like '%A%'];
        system.debug(lstcontact);

        List<Contact>sizeList = [select AccountId from contact];
        system.debug(sizeList.size());

    }
    public static void soql_formethod() {
        List<Contact>lstcontact = [select Lastname, phone from contact];
        system.debug(lstcontact);
        for (contact eachContact : lstcontact) {
            string lastName = eachContact.LastName;
            string phone = eachContact.Phone;
            system.debug('Last name is ' + lastName + 'and phone number is '+ phone);
            
        }
        
    }
    
}
public class sampleClass {
    public static void createMap() {
        List<Contact> listContacts =[SELECT id, name, accountId FROM contact limit 50];
        //create map of accountid and list<contact>
        Map<id, list<Contact>> mapAccIdToContact = new Map<id, list<Contact>>();
        //go thorugh each contact, and add one by one contact in the list, and keep updating map.
        for (contact contactItem : listContacts) {
            //get account id of this contact
            id accountId = contactItem.AccountId;
            //create new TEMP list of contacts
            List<Contact> cntTemplist = new List<Contact>();
            //check if map has existing list<contact> to 'accountId>'
            if (mapAccIdToContact.get(accountId)!= null) {
                //if yes, then set that list<contact> to 'cntRempList'
                cntTemplist = mapAccIdToContact.get(accountId);
            }
            //now add the current contact(contactItem) in the cntTemplist
            cntTemplist.add(contactItem);

            //now put the accountId and cntTempList to map
            mapAccIdToContact.put(accountId, cntTemplist);
        }
        System.debug('final map is = '+ mapAccIdToContact); 

    }
}
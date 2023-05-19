public class SPTriggerHandlerSecond {
    public static void updateStatus(list<Salesforce_Project__c> sTriggerNew,list <Salesforce_Project__C> sTriggerOld,map<id, Salesforce_Project__c> sTriggerNewMap, map<id, Salesforce_Project__c> sTriggerOldMap) {
        set<id>SPIds = new set<id>();
        List<Salesforce_Ticket__c> newSTList = new List<Salesforce_Ticket__c>();

        for (Salesforce_Project__c eachSP : sTriggerNew) {
            if (eachSP.Status__c != sTriggerOldMap.get(eachSP.id).status__c && eachSP.Status__c == 'Completed') {
                SPIds.add(eachSP.id);
            }
        }
        List<Salesforce_Ticket__c> STList = [SELECT id, status__c , Salesforce_Project__c FROM Salesforce_Ticket__c WHERE Salesforce_Project__c IN :SPIds AND status__c != 'Completed'];
        for (Salesforce_Ticket__c eachSt : STList) {
            eachSt.Status__c = sTriggerNewMap.get(eachSt.Salesforce_Project__c).Status__c; 
            newSTList.add(eachSt);
        }
        if (!STList.isEmpty()) {
            update STList;
        }
    }
}
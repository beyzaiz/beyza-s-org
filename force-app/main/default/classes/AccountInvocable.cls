public with sharing class AccountInvocable {

    @InvocableMethod(label='Close Opportunities'
    description='This method is going to close all the open opportunities when the account status is changed to inactive or hold'
    category='XYZ')
    public static void closeOpportunities(List<Id>accountIds){
       List<Opportunity> opps= [SELECT Id,StageName FROM Opportunity WHERE AccountId IN :accountIds AND StageName NOT IN ('Closed Won', 'Closed Lost') WITH SECURITY_ENFORCED];

        for (Opportunity opp :opps) {
            opp.StageName='Closed Lost'; 
       }
       //save the upddates
       try {
        update opps;
       } catch (Exception ex) {
        System.debug(ex.getMessage());
        
       }
    }

}
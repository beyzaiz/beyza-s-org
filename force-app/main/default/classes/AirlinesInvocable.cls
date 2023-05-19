public with sharing class AirlinesInvocable {
    
        
        @InvocableMethod(label ='Send Airlines Information'
        description = 'Post the newly created airline records into vender system'
        category= 'Airlines')
        public static void sendAirlines(List<Id> airlineIds) {
            for (Id airlineID : airlineIds) {
                 RestCallouts.postAirlines(airlineId);
            }
    }
}
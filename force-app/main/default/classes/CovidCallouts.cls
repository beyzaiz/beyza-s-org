public with sharing class CovidCallouts {
    //Endpoint:https://api.covidtracking.com/v1/us/current.json
    //Http Method: GET
    public static HttpResponse getCovid () {
         //1. Prepare HttpRequest and wrap all the necessary data in it
         HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.covidtracking.com/v1/us/current.json');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the request over the internet to receive HttpResponse
        HttpResponse response = http.send(request);

        //4. Process the response
        if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            //Convert the json string into wrapper class
            list<CovidWrapper> covWrapper = (list<CovidWrapper>)JSON.deserialize(jsonString, list<CovidWrapper>.class);
            CovidWrapper Wrapper = covWrapper[0];
        
        //Convert the wrapper into sObject
        List<Covid_Info__c> cov = [SELECT Id, Name, Positive__c, Negative__c, Pending__c FROM Covid_Info__c WHERE Received_Date__c = TODAY];
        if (!cov.isEmpty()) {
            cov[0].Name = string.valueOf(Wrapper.states); 
            cov[0].Positive__c = Wrapper.positive;
            cov[0].Negative__c = Wrapper.negative;
            cov[0].Pending__c = Wrapper.pending;
            update cov[0];

        }else{
            Covid_Info__c CovidName = new Covid_Info__c();
            Covidname.Name = string.valueOf(Wrapper.states); 
            CovidName.Positive__c = Wrapper.positive;
            CovidName.Negative__c = Wrapper.negative;
            CovidName.Pending__c = Wrapper.pending;
            CovidName.Received_Date__c = date.today();
            insert CovidName;
        

            
        }
    }

        //4. Process the response
        System.debug(response.getStatus());
        System.debug(response.getStatusCode());
        System.debug(response.getBody());
        return response;
    

    

}
}
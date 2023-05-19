@isTest 
public with sharing class LeadManagerTest {
   @TestSetup
   private static void makeData(){
    List<Lead> leads = new List<Lead>();
    for (Integer i = 0; i < =2 ; i++) {
        Lead ld = new Lead(LastName = 'Test Lead'+i);
        ld.FirstName = 'Bala';
        ld.Company = 'Softi';
        ld.LeadSource = 'Web';
        leads.add(ld);
    }
    insert leads;
   }
   @isTest 
   private static void getLeadTest(){
    Test.startTest();
    //1. Prepare RestRequest and wrap all the nessecary information in it 
    Lead ld = [SELECT Id, Name, Company, Title, LeadSource, Email, Phone FROM Lead LIMIT 1];
    String endpoint = System.Url.getSalesforceBaseUrl().toExternalForm() + '/services/apexrest/Lead/'+ld.Id;
    RestRequest request = new RestRequest();
    request.requestURI = endpoint;
    request.httpMethod = 'GET';
    //2. Prepare RestContext
    RestContext.request = request;
    //3.Make callout
    Lead lead1 = LeadManager.getLead();
    //4.Perform asserts
    Assert.areEqual(ld.Name, lead1.Name);
    Assert.areEqual(ld.LeadSource, lead1.LeadSource);
    Test.stopTest();
   }
   @isTest 
   private static void postLeadTest(){
    Test.startTest();
    //1.Make callout
    Id leadId = LeadManager.postLead('Test Lead','Bala', 'abcd', 'title', 'Web', 'e@g.mail', '1234556');
    //2.Perform asserts
    Assert.isNotNull(leadId);
    Test.stopTest();
   }
   @isTest 
   private static void deleteLeadTest(){
    Test.startTest();
    //1. Prepare RestRequest and wrap all the nessecary information in it
    Lead ld = [SELECT Id FROM Lead LIMIT 1];
    String endpoint = System.Url.getSalesforceBaseUrl().toExternalForm() + '/services/apexrest/Lead/' +ld.Id;
    RestRequest request = new RestRequest();
    request.requestURI = endpoint;
    request.httpMethod = 'DELETE';

    //2. Prepare RestContext
    RestContext.request = request;
    //3. Make callout(Success Case)
    String status = LeadManager.deleteLead();
    //4. Perform asserts
    Assert.areEqual('Success', status);
    Test.stopTest();
   }
   @isTest 
   private static void deleteLeadFailTest(){
    Test.startTest();
    //1. Prepare RestRequest and wrap all the nessecary information in it
    Lead ld = [SELECT Id FROM Lead LIMIT 1];
    String endpoint = System.Url.getSalesforceBaseUrl().toExternalForm() + '/services/apexrest/Lead/' + ld.Id;
    RestRequest request = new RestRequest();
    request.requestURI = endpoint;
    request.httpMethod = 'DELETE';

    //2. Prepare RestContext
    RestContext.request = request;

    //3. Make callout(Failure Case)
    String statusOld = LeadManager.deleteLead();
    String status = LeadManager.deleteLead();

    //4. Perform asserts
    Assert.areEqual('Fail', status);
    Test.stopTest();
   } 
   @isTest 
   private static void putLeadTest(){
    Test.startTest();
    //1. Prepare RestRequest and wrap all the nessecary information in it
        //Step 1
        Lead ld = new Lead(lastName = 'My Lead', Company = 'New Company', Title = 'Title', LeadSource = 'Web', Email = 'e@g.com', Phone = '123456');
        String body = JSON.serialize(ld);
        //Step 2
        RestRequest request = new RestRequest();
        request.requestBody = blob.valueOf(body);
        request.httpMethod = 'PUT';
    //2. Prepare RestContext
    RestContext.request = request;

    //3. Make callout
    Lead newld = LeadManager.putLead();

    //4. Perform asserts
    Assert.isNotNull(newld.Id);
    Assert.areEqual(ld.lastName, newld.lastName);
    Assert.areEqual(ld.LeadSource, newld.LeadSource);
    Test.stopTest();
   }
   @isTest 
   private static void patchLead(){
    //1. Prepare RestRequest and wrap all the nessecary information in it

        //Step 1
        Lead ld = [SELECT Id, Name, Company, Title, LeadSource, Email, Phone FROM Lead LIMIT 1];
        ld.LeadSource= 'Web';
        ld.Company ='Cadinal Inc.';
        String body = JSON.serialize(ld);
        //Step 2
        RestRequest request = new RestRequest();
        request.requestBody = Blob.valueOf(body);
        request.httpMethod = 'PATCH';
    //2. Prepare RestContext
    RestContext.request = request;

    //3. Make callout
    Lead Updateld = LeadManager.patchLead();

    //4. Perform asserts
    Assert.areEqual('Cadinal Inc.', Updateld.Company);
    Assert.areEqual('Web', Updateld.LeadSource);
   }
}

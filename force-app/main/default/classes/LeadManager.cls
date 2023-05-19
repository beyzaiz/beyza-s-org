@RestResource(urlMapping = '/Lead/*')
global with sharing class LeadManager {
   //https://ddn000005kwcomaw-dev-ed.develop.lightning.force.com/lightning/r/Lead/00QDn000006glnEMAQ/view
   
   @HttpGet
   global static Lead getLead(){
    RestRequest request = RestContext.request;
    String endpoint = request.requestURI;
    Integer lastIndex = endpoint.lastIndexOf('/');
    Id leadId = endpoint.substring(lastIndex+1);
    Lead ld= [SELECT Id, Name, Company, Title, LeadSource, Email, Phone FROM Lead WHERE Id = :leadId];
    return ld;
    
   }
   @HttpPost 
   global static Id postLead(String firstName,String lastName, String company, String title, String leadSource, String email, String phone){
    Lead Id = new Lead();
    Id.FirstName = firstName;
    Id.LastName = lastName;
    Id.Company = company;
    Id.Title = title;
    Id.LeadSource = leadSource;
    Id.Email = email;
    Id.Phone = phone;
    insert Id;
    return Id.Id;
   }
   @HttpDelete 
   global static String deleteLead(){
    RestRequest request = RestContext.request;
       String endpoint = request.requestURI;
       Integer lastIndex = endpoint.lastIndexOf('/');
       Id leadId = endpoint.substring(lastIndex+1);
       try{
            Lead ld = [SELECT Id FROM Lead WHERE Id = :leadID];
            delete ld;

       }catch(Exception ex){
            return 'Fail';
       }
       return 'Success';

    }
    @HttpPut 
    global static Lead putLead(){
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();
        Lead ld = (Lead)JSON.deserialize(body, Lead.class);
        upsert ld;
        return ld;
    }
    @HttpPatch 
    global static Lead patchLead(){
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();
        Lead ld = (Lead)JSON.deserialize(body, Lead.class);
        update ld;
        Lead updatedLd = [SELECT Id, Name, Company, Title, LeadSource, Email, Phone  FROM Lead WHERE Id = :ld.Id];
        return updatedLd;

    }
    
   
}

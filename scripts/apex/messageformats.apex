//JSON format
{
    "Name" : "ABC Pvt Ltd",
    "Type" : "Consulting",
    "Industry" : "Education",
    "Annual Revenue" : 2000000,
    "Established" : 2000,
}

//Get an account tecord record, convert that into json format
Account acc = [SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE Type !=null AND AnnualRevenue !=null LIMIT 1];
String jsontString = JSON.serialize(acc);
System.debug(jsontString);


//Get 5 account records, convert them into jsin format
List<Account> accounts = [SELECT Id, Name, Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null AND AnnualRevenue != null LIMIT 5];
String jsontString = JSON.serialize(accounts);
System.debug(jsontString);

Opportunity opp = [SELECT Id, Name, Type, StageName, Amount
                   FROM Opportunity
                   WHERE Type != null
                   AND StageName != null
                   AND Amount != null
                   LIMIT 1];
String jsonString = JSON.serialize(opp);
System.debug(jsonString);  

//Get top 10 opportunities based on Amount, convert them into json format

List<Opportunity> opps = [SELECT Id, Name, Type, StageName, Amount FROM Opportunity WHERE Type != null AND StageName != null AND Amount !=null ORDER BY Amount DESC LIMIT 10];
String jsonString = JSON.serialize(opps);
System.debug(jsonString); 

//Test REST Callouts
RestCallouts.getAnimals();

RestCallouts.getAirlines();

RestCallouts.getEmployees();

RestCallouts.getCaseInfo();

RestCallouts.postAnimal();

CovidCallouts.getCovid();

SoapCallouts.getParksByCountry('United States');
SoapCallouts.doAddCallout(10, 20);
SoapCallouts.doMultiplyCallout(12, 27);

Map<string, country_code__c> countryCodes = country_code__c.getAll();
System.debug('countryCode map '+ countryCodes);

for (String eachName : countryCodes.keySet()) {
    country_code__c eachRecord = countryCodes.get(eachName);
    System.debug('country is '+ eachName+ ', its code is ' + eachRecord.code__c);

    country_code__c ccIndia = country_code__c.getInstance('India');
    System.debug(ccIndia);
    System.debug('ccIndia code '+ ccIndia.code__c);
}


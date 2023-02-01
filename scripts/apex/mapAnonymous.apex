Map<string, string> mapCountryCurrency = new Map<String,String>();

mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('Poland', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('Turkiye', 'Lira');
mapCountryCurrency.put('El Slavador', 'Bitcoin');
system.debug('map of country and its currency ==> ' +mapCountryCurrency);

//get value using Key froma a map
string IndiaCurrency = mapCountryCurrency.get('India');
string TurkiyeCurrency = mapCountryCurrency.get('Turkiye');
system.debug('India currency is ' + IndiaCurrency);
system.debug('Turkiye currency is ' + TurkiyeCurrency);

//get all keys using keyset method
Set<String> countrySet = mapCountryCurrency.keySet();
system.debug('countries are ' + countrySet);

List<String> currencies = mapCountryCurrency.values();
system.debug('currencies are ' +currencies);

Set<String> countries = mapCountryCurrency.keySet();

for (string eachKey : countrySet){
    string printString = 'Country is ' +eachKey;
    system.debug(printString);
    string eachValue = mapCountryCurrency.get(eachKey);
    printString += ', its currency is ' +eachValue;
    system.debug(printString);
}
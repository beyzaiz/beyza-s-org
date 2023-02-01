public with sharing class SetDemo {
    public static void citySet() {
        Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('BERLIN');
        cities.add('Nairobi');

        system.debug('city set:' + cities);

    }
    public static void randomIntegerSet() {
        Set<integer> inSet = new Set<integer>();
        inSet.add(10);
        inSet.add(15);
        inSet.add(21);
        inSet.add(15);
        inSet.add(15);
        inSet.add(15);
        
        system.debug('set of integers' +inSet);

    }
    public static set <integer>setFromList(list<integer>listInt) {
        Set<integer> returnSet = new Set<integer>();
        returnSet.addAll(listInt);
        return returnSet;
    }

    public static set<string> upperCaseSet(set<string>setStr) {
        Set<string> upperSet = new Set<string>();
        for (string eachStr : setStr) {
            string tempStr = eachStr.toUpperCase();
            upperSet.add(tempStr);
            
        }
        return upperSet;
    }
}

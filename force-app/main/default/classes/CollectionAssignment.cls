public class CollectionAssignment {
    Set<String> countriesSet = new set<string>{'India', 'USa', 'Russia', 'Germany', 'Singapore', 'Japan'};
    

    public void printLowerCase() {
        Set<string> lowerCaseNew = new Set<string>();
        for (string eachStr : countriesSet) {
            string  tempStr = eachStr.toLowerCase();
            lowerCaseNew.add(tempStr); 
        }
        system.debug (lowerCaseNew);
    }

    public void printUppercase(){
        Set<string> upperCaseNew = new Set<string>();
        for (string eachStr : countriesSet) {
            string  tempStr = eachStr.toUpperCase();
            upperCaseNew.add(tempStr); 
        }
        system.debug (upperCaseNew);
    }


        
}

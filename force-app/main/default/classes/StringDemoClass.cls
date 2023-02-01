public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'learning string methods in apex language.';
        system.debug(sessionDescription);

        //1. length

        integer lenthOfStr = sessionDescription.length();
        system.debug('length of session description string is ... ' + lenthOfStr);

        //2. uppercase
        string strCapital = sessionDescription.toUpperCase();
        system.debug ('capital string is==> ' +strCapital);

        //3
        Boolean containsApex = sessionDescription.contains ('apex');
        system.debug ('session description contains apex??' + containsApex);

        Boolean containsApex2 = sessionDescription.contains ('Apex');
        system.debug ('session description contains Apex??' + containsApex2);

        Boolean containsApex3 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('session description contains APEX' + containsApex3);

        Boolean containsSalesforce = sessionDescription.contains ('Salesforce');
        system.debug ('session description contains Salesforce?? ' + containsSalesforce);

        string username = '  vitap r  ';
        system.debug('username length is --> ' + username.length());

        string username2 = username.trim();
        system.debug('username2 length is --> ' + username2.length());
    }

    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
    
    
    public integer add(integer x, integer y, integer z){
        integer sum = x+y+z;
        return sum;

    }

}
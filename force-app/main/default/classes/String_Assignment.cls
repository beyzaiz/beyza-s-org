public class String_Assignment {
    public void stringAssignment(){
        string Localstring = 'Thanks for the session on the string';
        system.debug (Localstring);

        integer lengthLC = Localstring.length();
        system.debug (' lenght of this string is ' + lengthLC);

        string strCapital = Localstring.toUpperCase();
        system.debug (strCapital);

        Boolean containsSession = Localstring.contains('session');
        system.debug('session description contains => ' + containsSession);

        Boolean containsSession2 = Localstring.contains('sessions');
        system.debug('session description contains => ' + containsSession2);

        Boolean containsSession3 = Localstring.contains('SESSION');
        system.debug('session description contains => ' + containsSession3);


    }
}

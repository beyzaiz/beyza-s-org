public class Calculator {

    //parameters:  two integer
    //returns: sum of two integers
    public void welcomeMessage(){
        system.debug('welcome to apex calc,  update');
    }

    //default access modifier ==> private
    //private -> is accessible only inside the class. NOT OUTSIDE.
    public void printNewMessage(string msg){
        system.debug(msg);
        //this is how we can call other method of same class.
        welcomeMessage();
    }

    //return type = string
    //parameter type = string (only 1)
    public string printAndReturnMessage(string m){
        string returnStr = '';
        system.debug('message is ' + m);
        returnStr = m + '...OK Cool';
        return returnStr;
    }
    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }

    public Boolean leapYearCheck(date dt){
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
    }

    public void publicMessage(){
        system.debug('public method called');
        privateMessage1();
    
    }

    private void privateMessage1(){
        system.debug('private method called');
    }
}
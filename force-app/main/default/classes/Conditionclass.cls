public class Conditionclass {
    public string isClassMethod(integer month){
        string output_month = '';
        
        if (month ==1) {
            output_month = 'January';
            
        }else if (month == 2) {
            output_month = 'February';
            
        }else {
            output_month = 'Not a valid Month';
        }
        return output_month;

    }

    public string caseMethod(string m){
        string output_Quarter = 'Enter a proper Month name';

        if (m == 'January' || m== 'February' ||  m== 'March' ) {
            
        
            output_Quarter = 'Quarter1';
        }else{

            output_Quarter = 'Not a valid Quarter';
        }
        return output_Quarter;
    }
}
public class Collections {
    public static string listAssignment(integer i) {
        i=i-1;

        List<string> LstMonth = new List<string>();
       
        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('Agust');
        LstMonth.add('Septemer');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');
        string output_month = '';
        if(i>= 0 && i< lstMonth.size()){
            output_month = LstMonth[i];
        
        }else{
            output_month = 'not valid month';
        }
        return output_month;
        

    }
}
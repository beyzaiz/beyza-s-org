public class ListDemo {
    public static string candidateList(integer i) {
        List<String> listCandidates = new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        System.debug('candidates==>'+ listCandidates);
        
        string candidate = '';
        if (i>= 0 && i<listCandidates.size()) {
            candidate = listCandidates[i];
        }else{
            candidate = 'No value found. Try again later!';
        }
        return candidate;



    }
    public static void randomIntegerList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        system.debug('random integer list==>' + listInteger);
        integer index3value = listInteger.get(3);
        //or
        integer index3value2 = listInteger[3];
        system.debug('value at index 3==>' +index3value);
        system.debug('value of index 3 3, again==>'+index3value2);
    }
    public static void allCats() {
        //create a list of cat class
        List<cat> cats = new List<cat>();
        cat c1 = new cat('cinamon', 'brown');
        cat c2 = new cat('duman', 'dark gray');
        cat c3 = new cat();
        cats.add(c1);
        cats.add(c2);
        cats.add(c3);
        system.debug('cats ===>' +cats);
        if (!cats.isEmpty()){
            system.debug('cat at 0 ' +cats [0]);
        }
        
    }
    public static void iterateList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        for (integer eachinteger : listInteger) {
            system.debug(eachInteger);
        }
    }

}
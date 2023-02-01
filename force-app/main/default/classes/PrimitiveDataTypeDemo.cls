public class PrimitiveDataTypeDemo {
    //creating a method
    public void printBasicDataType(){
        //this is method body.
        string batchName = 'Batch 14';
        integer totalCandidates = 40;
        boolean isAdminCompleted = true;

        system.debug('total candidates ==> ' + totalCandidates);

        string batchDescription = batchName + ' is the best';
        system.debug(batchDescription);

        Decimal dec = 74.28;
        system.debug('decimal value is '+ dec);

        Long longValue = 8345904958L;
        system.debug('long value is' + longvalue);

        Object obj1 = 'a string in object';
        Object obj2 = 99;
        Object obj3 = false;

        system.debug ('obj 1 is ' + obj1);
        system.debug ('obj 2 is ' + obj2);
        system.debug ('obj 3 is ' + obj3);

        ID recordID = '001Dn00000B9CVzIAN';
        system.debug('record id is' + recordID);
    }
}

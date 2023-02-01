Map<String, integer>  marksObtainInMaths = new Map<string, integer>();
    marksObtainInMaths.put('0111CE112', 40);
    marksObtainInMaths.put('0111CE102', 19);
    marksObtainInMaths.put('0111CE100', 33);
    marksObtainInMaths.put('0111CE098', 40);
    system.debug(marksObtainInMaths);


    marksObtainInMaths.put('0111CE034', 45);
    marksObtainInMaths.put('0111CE256', 14);

    system.debug(marksObtainInMaths);


    set<string> StudentRollNumber = marksObtainInMaths.keySet();
    system.debug('student numbers are ' + StudentRollNumber);

    List<integer> MarksObtain = marksObtainInMaths.values();
    system.debug('students grades are ' + MarksObtain);

    set<string> uniqueRollNumberSet = marksObtainInMaths.keySet();
    system.debug(uniqueRollNumberSet);

    list<integer>marksObtainList = marksObtainInMaths.values();
    system.debug(marksObtainList);
    
    for (string eachKey : uniqueRollNumberSet){
    string printString = 'Student is ' +eachKey;
    system.debug(printString);
    integer eachValue = marksObtainInMaths.get(eachKey);
    printString += ', its grade is ' +eachValue;
    system.debug(printString);
    if(marksObtainInMaths.get(eachKey)<20){
        system.debug(' is not qualified for next class');
    }
    
    }

    
    
    
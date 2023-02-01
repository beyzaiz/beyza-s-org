Conditionclass con = new Conditionclass();
string month1 = con.isClassMethod(1);
system.debug('the month is ' + month1);
string month2 = con.isClassMethod(12);
system.debug('the month is ' + month2);


string quarter1 = con.caseMethod('January');
system.debug( 'the quarter is ' + quarter1);
string quarter2 = con.caseMethod('December');
system.debug('the quarter is '+ quarter2);
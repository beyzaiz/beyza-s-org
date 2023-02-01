public class Datetime_Assignment {
    public void diffOfDate(){
        date varTomorrowDate = date.newInstance(2023, 01, 14);
        date varTodaysDate = date.today();

        Integer numberOfDaysBetw = varTomorrowDate.daysBetween(varTodaysDate);

        system.debug('The difference between the two days is ' + numberOfDaysBetw);
    }

    public void timeCheck(){
        Datetime varTomorrowDatetime = Datetime.newInstance(2023, 1, 15, 7, 00, 00);
        Datetime var10DaysDatetime = Datetime.newInstance(2023, 1, 25, 9, 00, 00);
        long varDatetimeLong = 12339874361L;
        system.debug(varDatetimeLong);

        Datetime addSevenToTomorrow = varTomorrowDatetime.addDays(7);
        system.debug('The date is ' + addSevenToTomorrow);
        Datetime addTenToTenDays = var10DaysDatetime.addDays(10);
        system.debug ('The date is ' + addTenToTenDays);

    } 
}

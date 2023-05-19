public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        
        date birthDate = date.newInstance(1982, 9, 10);
        date todayDate = date.today();

        integer againMonths = birthDate.monthsBetween(todayDate);
        system.debug('My age is in months=>' + againMonths);

        integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('My age in days=>' + ageInDays);

     }

     public void printSubscriptionEndDate(){

        Date subStartDate = date.today();
        Date subEndDate = subStartDate.addDays(1000);
        system.debug('subscription end date is==>' + subEndDate);

        integer endDateYear = subEndDate.year();
        system.debug('year end date ' + endDateYear);

        integer endDateMonth = subEndDate.month();
        system.debug('month of end date' + endDateMonth);


     }

     public void printOfferEndDate(){
        datetime offerStart = datetime.now();
        datetime offerEnd = offerStart.addHours (51);

        system.debug('offer end datetime ' + offerEnd);

        Date offerEndDATE = offerEnd.date();
        system.debug('offer enddate is ' + offerEndDATE);
     }

     public void birthDateInMS(){    
                            //year, month, day, hour, minute, seconds
        datetime birthDT = datetime.newInstance(1990, 10, 9, 7, 30, 00);
        long birthDateMS = birthDT.getTime();
        system.debug('Vitap birth datetime in milliseconds --> ' + birthDateMS);
     
        
     }

    
}
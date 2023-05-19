string crn = '0 0 13 * * ?';

AcccountsSchedule acs = new AcccountsSchedule();
system.schedule ('accountSchedule22', crn, acs);
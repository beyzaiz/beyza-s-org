trigger caseTriggers on Case (before insert, before update) {
    
    if (trigger.isBefore) {

        System.debug('before insert case trigger called');
        System.debug('trigger size is ==>'+trigger.size);
        CaseTriggerHandler.count++;
        CaseTriggerHandler.numOfRecords = CaseTriggerHandler.numOfRecords + trigger.size;
        System.debug('# of times trigger ran : '+ CaseTriggerHandler.count);
        System.debug('# of records processed : ' + CaseTriggerHandler.numOfRecords);
    }
    

}
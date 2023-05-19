trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {

    if (Trigger.isBefore && Trigger.isUpdate) {
         //call validation method of handler
         //ContactTriggerHandler.contactUpdateValidation1(Trigger.new, trigger.old, trigger.newmap,trigger.oldmap);
         ContactTriggerHandler.contactUpdateValidation2(Trigger.new, trigger.old, trigger.newmap,trigger.oldmap);
    }
    if (Trigger.isAfter) {
       //call method to update rollUpsummary field
       ContactTriggerHandler.rollUpSummaryUpdate(Trigger.new, trigger.old, trigger.newmap,trigger.oldmap);
    }
 
 }
 

    
   
   
   
    /* if (trigger.isBefore && trigger.isInsert) {
        System.debug('before insert tirgger is called.');
        for (Contact cnt: trigger.new){
            System.debug('Contact name is '+ cnt.name + ', Account name is '+ cnt.AccountId + ', phone number is' + cnt.Phone + 'email address is '+ cnt.email);
        }
    }

    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('before update trigger is called');
        for (Contact cnt: trigger.new){
            System.debug('Contact name is '+ cnt.name + ', Account name is '+ cnt.AccountId + ', phone number is' + cnt.Phone + 'email address is '+ cnt.email);
        }
    }*/


   /* if(Trigger.isBefore){
        //this will be true for Before insert and before update.
        system.debug('We are in BEFORE Trigger.');
        if(Trigger.isInsert){
            system.debug('before insert trigger');
        }
        if(Trigger.isUpdate){
            system.debug('before update trigger');
        }
    }

    if(Trigger.isAfter){
        //this will be true for after insert and after update.
        system.debug('We are in AFTER Trigger.');
        if(Trigger.isInsert){
            system.debug('after insert trigger');
        }
        if(Trigger.isUpdate){
            system.debug('after update trigger');
        }
    } */
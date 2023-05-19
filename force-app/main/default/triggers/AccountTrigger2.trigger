trigger AccountTrigger2 on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');
   
    if (Trigger.isBefore) {
        //call handler method
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('Trigger.isAfter ' + Trigger.isAfter);
        system.debug('Trigger.isUpdate ' + Trigger.isUpdate);
        //call handler method to update vip of all contacts.
        AccountTriggerHandler.updateVIPforContact(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }



    /*if (trigger.isAfter && trigger.isInsert) {
        AccountTriggerHandler.createContact(trigger.new);
    }*/
}   
    
    /*if (trigger.isAfter) {
        if (trigger.isUpdate) {
         AccountTriggerHandler.updateBillingCity(trigger.new, trigger.old, trigger.NewMap, trigger.OldMap);
         
        } 
    }*/
   
   
   
   /* if (trigger.isAfter) {
       if (trigger.isUpdate) {
        AccountTriggerHandler.updateVIPforContact(trigger.new, trigger.old, trigger.oldMap, trigger.newMap);
        
       } 
    }*/
//}
   /* if (trigger.isBefore) {
        for (account eachAccount : trigger.new) {
            if (trigger.isInsert && eachAccount.active__c == 'yes') {
                eachAccount.Description = 'Account is Active';
            }
            if (trigger.isInsert && eachAccount.active__c == 'no'){
                eachAccount.Description = 'Account is inactive';
            }
        }
    }

    if (trigger.isBefore) {
        for (account eachAccount : trigger.new) {
            if (trigger.isUpdate && eachAccount.active__c == 'yes') {
                eachAccount.Description = 'Account is Active';
            }
            if (trigger.isUpdate){
                if(eachAccount.active__c == 'no' && trigger.oldMap.get (eachAccount.id).active__c != trigger.newMap.get(eachAccount.id).active__c){
                
                eachAccount.Description = 'Account is inactive';
                }
            }
        }
    }


    
}*/

   /* if (trigger.isBefore && trigger.isInsert) {
        System.debug('trigger.new is = '+trigger.new);
        System.debug('trigger.old is = ' +trigger.old);
        System.debug('trigger.newMap = ' +trigger.newMap);
        System.debug('trigger.oldmap = ' + trigger.oldMap);
    }

    if (trigger.isBefore && trigger.isUpdate) {
        System.debug('trigger.new is = '+trigger.new);
        System.debug('trigger.old is = ' +trigger.old);
        System.debug('trigger.newMap = ' +trigger.newMap);
        System.debug('trigger.oldmap = ' + trigger.oldMap);
    }

    if (trigger.isAfter && trigger.isInsert) {
        System.debug('trigger.new is = '+trigger.new);
        System.debug('trigger.old is = ' +trigger.old);
        System.debug('trigger.newMap = ' +trigger.newMap);
        System.debug('trigger.oldmap = ' + trigger.oldMap);
        Map<Id,Account> newMapA = trigger.newMap;
        for (account eachAccount : trigger.new) {
            string printAcc = 'New account name is ' + trigger.newMap.get(eachAccount.id).name;
        }
    }
    if (trigger.isAfter && trigger.isUpdate) {
        System.debug('trigger.new is = '+trigger.new);
        System.debug('trigger.old is = ' +trigger.old);
        System.debug('trigger.newMap = ' +trigger.newMap);
        System.debug('trigger.oldmap = ' + trigger.oldMap);
        Map<Id,Account> newMapA = trigger.newMap;
        for (account eachAccount : trigger.new) {
            string printAcc2 = 'New account name is ' + trigger.newMap.get(eachAccount.id).name;
            printAcc2 += ', old last name ' + trigger.oldMap.get(eachAccount.id).name;
        }
    }
}*/
    



   /* if (trigger.isBefore && trigger.isInsert){
        System.debug(trigger.old);
    }
    if (trigger.isAfter && trigger.isInsert) {
        System.debug(trigger.old);
    }
}*/
    
    /*if (trigger.isBefore){
        if (trigger.isInsert) {
            for(account eachAcc: Trigger.new){
                System.debug('before insert account name => '+eachAcc.Name);
                System.debug('before insert account rating => '+eachAcc.Rating);
                System.debug('before insert account description => '+eachAcc.Description);
                System.debug('before insert account mailing city => '+eachAcc.BillingCity);
            }
        }
        if (trigger.isUpdate) {
            for (account eachAcc : trigger.new) {
                System.debug('before update account name => '+eachAcc.Name);
                System.debug('before update account rating => '+eachAcc.rating);
                System.debug('before update account description => '+eachAcc.description);
                System.debug('before update account mailing city => '+eachAcc.BillingCity);
            }
        }
    }
    if (trigger.isAfter) {
        if (trigger.isInsert) {
            for (account eachAcc : trigger.new) {
                System.debug('after insert account name => '+eachAcc.Name);
                System.debug('after insert account rating => '+eachAcc.rating);
                System.debug('after insert account description => '+eachAcc.description);
                System.debug('after insert account mailing city => '+eachAcc.BillingCity);
            }
        }
        if (trigger.isUpdate) {
            for (account eachAcc : trigger.new) {
                System.debug('after update account name => '+eachAcc.Name);
                System.debug('after update account rating => '+eachAcc.rating);
                System.debug('after update account description => '+eachAcc.description);
                System.debug('after update account mailing city => '+eachAcc.BillingCity);
            }
        }
        
    }
    
   
}*/
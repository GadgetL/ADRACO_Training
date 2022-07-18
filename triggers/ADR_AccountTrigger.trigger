trigger ADR_AccountTrigger on Account (After Insert, before insert, after update, before update) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            system.debug('Before Insert');
            for(Account objAccount : Trigger.new){
                objAccount.Website = 'www.salesforce.com';
            }
            system.debug('------->'+Trigger.new);
        }
        else if(Trigger.isAfter){
            system.debug('After Insert');
            ADR_TriggerHandlerAccount.createContactRelated(Trigger.new);	
            /*for(Account objAccount : Trigger.new){
                objAccount.Website = 'www.adraco.com';
            }*/
            system.debug('------->'+Trigger.old);
        }
    }
    
    if(Trigger.isUpdate){
        system.debug('Update');
        if(Trigger.isBefore){
            for(Account objAccount: Trigger.new){
                objaccount.Type = 'Prospect';
            }
            System.debug('---->' + Trigger.new);
            system.debug('---->'+ Trigger.old);
        }
    }
    
}
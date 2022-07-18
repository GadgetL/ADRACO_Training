trigger ADR_AccountTrigger on Account (After insert,Before insert) {
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
           ADR_AccountTriggerHandler.createdContactRelated(Trigger.new);
            /*for(Account objAccount : Trigger.new){
                objAccount.Website = 'www.adraco.com';
            }*/
            system.debug('------->'+Trigger.old);
        }
    }
    
}
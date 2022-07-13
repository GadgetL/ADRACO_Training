trigger ADR_ContactTrigger on Contact (after insert, before insert,after update,before update) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            System.debug('--->'+Trigger.new);
            for(Contact objContact: Trigger.new){
                objContact.Description='Description trigger';
            }
            System.debug('Before Instert');
        }else{
            if(Trigger.isAfter){
                System.debug('After Instert');
                System.debug('--->'+Trigger.new);
                ADR_ContactTriggerHandler.UpdateAccount(Trigger.new);

            }    
        }
        
    }
}
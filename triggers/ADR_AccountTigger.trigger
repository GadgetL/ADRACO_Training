trigger ADR_AccountTigger on Account (after insert, before insert,after update,before update) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            System.debug('--->'+Trigger.old);
            for(Account objAccount: Trigger.new){
                objAccount.Website='www.holi.com';
            }
            
            System.debug('Before Instert');
        }else{
            if(Trigger.isAfter){
                
                System.debug('After Instert');
                ADR_AccountTriggerHandler.CreateContactRelated(Trigger.new);
                
                System.debug('--->'+Trigger.new);
            }    
        }

    }
    if(Trigger.isUpdate){
        System.debug('Update trigger');
        if(Trigger.isBefore){
            for(Account objAccount: Trigger.new){
                objAccount.Type='Prospect';
            }
        System.debug('---->'+Trigger.new);
        System.debug('---->'+Trigger.old);
         }
   }
    
}
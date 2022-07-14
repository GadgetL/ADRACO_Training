trigger ADR_AccountTrigger on Account (After insert,before insert) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            System.debug('------' + Trigger.new);
            for(Account objAccount:Trigger.new){
                objAccount.WebSite='www.salesforce.com';
            }
            System.debug('Before insert');
        }else if(Trigger.isAfter){
             System.debug('------' + Trigger.old);
            //ADR_AccountTriggerHandler.createContactRelated(Trigger.new);
          
                }
    }   
    if(Trigger.isUpdate){
        System.debug('Update');
        if(Trigger.isBefore){
            System.debug('----->' + Trigger.new);
            System.debug('----->' + Trigger.old);
            
        }
    }
}
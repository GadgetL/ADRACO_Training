trigger ADR_AccountTrigger on Account (After insert, Before insert) {
    if(trigger.isInsert){
        if(trigger.isBefore){
            System.debug('Before insert');
            for(Account objAccount:Trigger.new){
                objAccount.Website = 'www.salesforce.com';        
            }  
            System.debug('-->' + Trigger.new);
        }
        else if(trigger.isAfter){
            System.debug('After insert');
            ADR_AccountTriggerHandler.createContactRelated(Trigger.new);
            System.debug('-->' + Trigger.old);
            /*for(Account objAccount:Trigger.new){
                objAccount.Website = 'www.google.com';                
            } */            
        }        
    }   
    if(Trigger.isUpdate){
        System.debug('Update');
        if(Trigger.isBefore){
            for(Account objAccount: Trigger.new){
                objAccount.Type = 'Prospect';
            }
            System.debug('--> ' + Trigger.new);
            System.debug('--> ' + Trigger.old);
        }
    }
}
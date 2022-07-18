trigger ADR_ContactTrigger on Contact (After insert, Before insert) {
    if(trigger.isInsert){
        System.debug('Before insert');
        if(trigger.isBefore){
        System.debug('-->' + Trigger.new);
            for(Contact objContact:Trigger.new){
                objContact.FirstName = 'EjercicioTrigger';  
                objContact.LastName = 'LastN';
                objContact.Email = 'contac_trigger@email.com'; 
            }           
        }
        else if(trigger.isAfter){
            System.debug('After insert');
            ADR_ContactTriggerHandler.createAccountRelated(Trigger.new);
            System.debug('-->' + Trigger.old);           
        }            
    }    
}
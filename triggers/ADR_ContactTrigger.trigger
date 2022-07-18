trigger ADR_ContactTrigger on Contact (After insert,Before insert) {
    if(trigger.isInsert){
        if(trigger.isBefore){
            System.debug('--->'+Trigger.new);
            for(Contact objContact : Trigger.new){
                objContact.Description= 'Before Insert';
            }
            System.debug('Before insert');
        }
       /* if(trigger.isAfter){
            System.debug('--->'+Trigger.new);
             for(Contact objContact : Trigger.new);{
                 System.debug('--->'+objContact);
             }
            System.debug('After insert');
    }*/
    }
}
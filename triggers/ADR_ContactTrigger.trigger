trigger ADR_ContactTrigger on Contact (After insert,before insert) {
     if(Trigger.isInsert){
        if(Trigger.isBefore){
            System.debug('------' + Trigger.new);
            for(Contact objContact:Trigger.new){
                objContact.Description='After Insert';
            }
            System.debug('Before insert');
        }
    }

}
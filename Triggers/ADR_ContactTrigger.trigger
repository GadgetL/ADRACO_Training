/************************************************************************************************************
 * Name: ADR_ContactTrigger
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Before insert complete Contact description.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Conection with User API
*/
trigger ADR_ContactTrigger on Contact (before insert, after insert) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            system.debug('---->'+Trigger.new);
            for(Contact objCont: Trigger.new){
                objCont.Description = 'After Insert';
            }
            System.debug('Before INSERT Contact');
        }
        if(Trigger.isAfter){
            system.debug('--->'+trigger.new);
            ADR_ContactTriggerHandler.updateAccountRelated(Trigger.new);
            system.debug('After INSERT Contact');
        }
    }

}
/*trigger.isInsert permite saber que se esta insertando un registro
 trigger.isUpdate   que se esta actualizando
trigger.isDelete  que se esta eliminando
*/
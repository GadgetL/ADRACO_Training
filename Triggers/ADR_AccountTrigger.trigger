/************************************************************************************************************
 * Name: ADR_AccountTrigger
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Before insert complete Account website, and before update complete Account type.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Create of Trigger
*/
trigger ADR_AccountTrigger on Account (After insert, before insert, before update) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            system.debug('---->'+Trigger.new+'\nBefore INSERT');
            for(Account objAcc: Trigger.new){
                objAcc.Website = 'www.salesforce.com';
            }
        }
        else if(Trigger.isAfter){
            system.debug('---->'+Trigger.old);
            //ADR_AccountTriggerHandler.createdContactRelated(Trigger.new);
            system.debug('After insert');
        }
    }
    if(Trigger.isUpdate){
        System.debug('Update');
        if(Trigger.isBefore){
            for(Account objAcc : Trigger.new){
                objAcc.Type = 'Prospect';
            }
            System.debug('---'+Trigger.new);
            system.debug('-----'+Trigger.old);
        }
    }

}
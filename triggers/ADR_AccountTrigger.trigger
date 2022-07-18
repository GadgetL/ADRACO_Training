/*************************************************************************************** 
* Name: ADR_AccountTrigger
* Test: ADR_AccountTrigger_Test
* Author: Valentín López Morales 
* Description: Account Triggers
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| after Insert, before insert, after update, before update
*/
trigger ADR_AccountTrigger on Account (After Insert, before insert, after update, before update) {
    if(Trigger.isInsert){//If contact is inserted
        if(Trigger.isBefore){//Action to take before insert
            system.debug('Before Insert');
            for(Account objAccount : Trigger.new){
                objAccount.Website = 'www.salesforce.com';
            }
            system.debug('------->'+Trigger.new);
        }
        else if(Trigger.isAfter){//Action to take after insert
            system.debug('After Insert');
            ADR_AccountTriggerHandler.createContactRelated(Trigger.new);
            system.debug('------->'+Trigger.old);
        }
    }
    if(Trigger.isUpdate){//If contact is updated
        if(Trigger.isBefore){//Action to take before update
            system.debug('Before Update');
            system.debug('--->'+Trigger.new);
            for(Account objAccount : Trigger.new){
                objAccount.Type = 'Prospect';
            }
            system.debug('--->'+Trigger.old);
        }
    }
    
}
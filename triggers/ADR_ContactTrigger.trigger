/*************************************************************************************** 
* Name: ADR_ContactTrigger
* Test: ADR_ContactTrigger_Test
* Author: Valentín López Morales 
* Description: Contact Triggers
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| before and after insert
*/
trigger ADR_ContactTrigger on Contact (before insert, after insert) {
    if(Trigger.isInsert){//If contact is inserted
        if(Trigger.isBefore){//Action to take before insert
            system.debug('Before Insert');
            for(Contact objContact : Trigger.new){
                objContact.Description = 'Before Insert';
            }
            system.debug('------->'+Trigger.new);
        }
        else if(Trigger.isAfter){//Action to take after insert
            system.debug('After Insert');
            //account-related contact is created
            ADR_ContactTriggerHandler.accountContactRelated(Trigger.new);
    	}
    }

}
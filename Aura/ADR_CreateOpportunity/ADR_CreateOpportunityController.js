/************************************************************************************************************
 * Name: ADR_CreateOpportunityController
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Controller for display the List Opportunities update after create of record.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Creation of method createOpportunity
*/
({
	doInit : function(component, event, helper) {
		helper.DisplayOpportunity(component);
	},
    createOpportunity : function(component, event, helper){
    	helper.createOpportunity(component);
        helper.DisplayOpportunity(component);
	}
})
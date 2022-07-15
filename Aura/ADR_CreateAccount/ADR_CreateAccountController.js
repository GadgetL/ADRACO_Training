/************************************************************************************************************
 * Name: ADR_CreateAccountController
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Controller for display the List Accounts update after create of record.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Creation of method createAccount
*/
({
	doInit : function(component, event, helper) {
		helper.DisplayAccounts(component);
	},
    createAccount : function(component, event, helper){
    	helper.createAccount(component);
        helper.DisplayAccounts(component);
	}
})
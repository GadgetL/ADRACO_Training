/************************************************************************************************************
 * Name: ADR_CreateContactController
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Controller for display the List Contacts update after create of record.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Creation of method createContact
*/
({
	doInit : function(component, event, helper) {
		helper.DisplayContacts(component);
	},
    createContact : function(component, event, helper){
    	helper.createContact(component);
        helper.DisplayContacts(component);
	}
})
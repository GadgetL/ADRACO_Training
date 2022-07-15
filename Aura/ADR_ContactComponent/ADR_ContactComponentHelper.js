/************************************************************************************************************
 * Name: ADR_ContactComponetHelper
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Helper for conection with Class Apex, set params and values obtention of objects.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Creation of method getLastNameOrEmail
*/
({
	AccountHelperMethod : function(component) {
		//console.log('Metodo en helper');
        var action = component.get("c.fetchContactRecords");
        action.setCallback(this, function(res){
            console.log("estatus-->"+JSON.stringify(res.getState()));
            component.set("v.lstContacts", res.getReturnValue());
            console.log(component.get("v.lstContacts")); 
        });
        $A.enqueueAction(action);
	},
    getLastNameOrEmail : function(component) {
		//console.log('Metodo en helper');
        var action = component.get("c.fetchContactRecord");
        action.setParams({
            "strLastName" : 'Gonzalez', "strEmail" : 'jrogers@burlington.com' 
        });
        action.setCallback(this, function(res){
            console.log("estatus-->"+JSON.stringify(res.getState()));
            component.set("v.lstContacts", res.getReturnValue());
            console.log(component.get("v.lstContacts")); 
        });
        $A.enqueueAction(action);
	}
})
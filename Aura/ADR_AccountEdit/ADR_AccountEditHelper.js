/************************************************************************************************************
 * Name: ADR_AccountEditHelper
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Helper for conection with Class Apex that update tha List displaying in Aura component.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Creation of method AccountsData
*/
({
	AccountsData :function(component) {
		var action = component.get("c.getLstAccounts");
        action.setCallback(this, function(res){
            //console.log("estatus-->"+JSON.stringify(res.getState()));
            component.set("v.data", res.getReturnValue());
            console.log(component.get("v.data")); 
        });
        $A.enqueueAction(action);
	}
})
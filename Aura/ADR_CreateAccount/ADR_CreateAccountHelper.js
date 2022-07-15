/************************************************************************************************************
 * Name: ADR_CreateAccountHelper
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Helper for display values of List Accounts, and set paramas for create of record in the class 
 *  apex .
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Creation of method createAccount
*/
({
	DisplayAccounts : function(component) {
		var action = component.get("c.displayAccoun");
        action.setCallback(this, function(res){
            //console.log("estatus-->"+JSON.stringify(res.getState()));
            component.set("v.lstAccounts", res.getReturnValue());
            console.log(component.get("v.lstAccounts")); 
        });
        $A.enqueueAction(action);
	},
    createAccount : function(component){    
    	var action=component.get("c.createAccounts");
    	action.setParams({
    		"objAcco" : component.get('v.objAccount')
		});
        action.setCallback(this,function(res){
            var state= res.getState();
            if(state === "SUCCESS"){
                console.log("La cuenta fue insertada");
                 var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title : 'Success',
                    message: 'The record Created successfully.',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester' 
                });
                toastEvent.fire();
            }else{
              console.log("La cuenta no se pudo insertar");  
            }
            
        } );
        $A.enqueueAction(action);
	}


    
    /*{
		var action = component.get("c.createAccount");
        action.setParams({
            "objAcco":component.get('v.objAccount')
        });
        action.setCallback(this, function(res){
            component.set("v.lstAccounts", res.getReturnValue());
            console.log(component.get("v.lstAccounts")); 
            var state=res.getState();
            if(state == "SUCCESS"){
                toastEvent.setParams({
                    title : 'Succes',
                    message: 'The Account was insert successfully',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester'
                });
                toastEvent.fire();
            }else{
                toastEvent.setParams({
                    title : 'Error',
                    message:'This is an error message',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'error',
                    mode: 'pester'
                });
                toastEvent.fire();
            }
        });
        $A.enqueueAction(action);
	}*/
})
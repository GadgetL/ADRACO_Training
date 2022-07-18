({	//Muestra las Accounts
	displayAccountsHelper : function(component) {
        //Llama el método de la clase ADR_AccountInsetAndDisplay
		var action = component.get("c.displayAccount");
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Value--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstAccounts",res.getReturnValue());
        });
		$A.enqueueAction(action);
	},
    // Crea Account
    createAccountHelper : function(component) {
        console.log("Data createAccountHelper: "+JSON.stringify(component.get('v.objAccount')));
        //Llama el método de la clase ADR_AccountInsetAndDisplay
        var action = component.get("c.createAccount");
        //Establecemos los valores del parametro
        action.setParams({
            "objAccount" : component.get('v.objAccount') 
        });
        action.setCallback(this,function(res){
            var state = res.getState();
        	if(state === "SUCCESS"){
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title : 'Success',
                    message: 'THE ACCOUNT WAS INSERT SUCCESSFULLY',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester'
                });
                toastEvent.fire();
            }else{
                console.log("Error Account");
                /*var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title : 'Error',
                    message:'Error with the server',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'error',
                    mode: 'pester'
                });
                toastEvent.fire();*/
            }
        });
		$A.enqueueAction(action);
    }
})
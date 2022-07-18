({
    //Controlador que muestra las cuentas
	doInit : function(component, event, helper) {
		helper.displayAccountsHelper(component);
	},
    //Controlador que guarda la cuenta
    saveAccount : function(component, event, helper){
        helper.createAccountHelper(component);
        helper.displayAccountsHelper(component);
    }
})
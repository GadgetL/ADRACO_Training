({
	doInit : function(component, event, helper) {
		console.log("Componente cargado!!");
        //helper.AccountHelperMethod(component);
        helper.getAccountByName(component);
	}
})
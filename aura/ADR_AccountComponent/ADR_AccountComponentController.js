({
	doInit : function(component, event, helper) {
		console.log("component cargando!!");
        //Estamos accediendo al helper al método "AccountHelperMethod"
        //helper.AccountHelperMethod(component);
        helper.getAccountByName(component);
	}
})
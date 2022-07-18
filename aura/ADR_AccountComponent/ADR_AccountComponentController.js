({
	doInit : function(component, event, helper) {
		console.log("Componente cargado!!")
        helper.getAccountByName(component);
	}
})
({
	doInit : function(component, event, helper) {
		console.log("Cargando...");
        helper.getContactByName(component);
	}
})
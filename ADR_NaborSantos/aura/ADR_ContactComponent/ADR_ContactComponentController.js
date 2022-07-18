({
	doInit : function(component, event, helper) {
		console.log("Component cargado!");
        //helper.ContactHelperMethod(component);
        helper.getContactbyParams(component);
	}
})
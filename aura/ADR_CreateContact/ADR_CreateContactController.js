({
	doinit : function(component, event, helper) {
		helper.displayContact(component);  
	}
    ,
    createContact : function(component, event, helper) {
		helper.createNewContactHelper(component);  
        helper.displayContact(component);  
		console.log("Controller "+JSON.stringify(component.get('v.objContact')));
	}
})
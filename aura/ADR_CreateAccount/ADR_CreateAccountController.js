({
	doinit : function(component, event, helper) {
		helper.displayAccount(component);  
	}
    ,
    createAccount : function(component, event, helper) {
		helper.createNewAccountHelper(component);  
        helper.displayAccount(component);  
		console.log("Controller "+JSON.stringify(component.get('v.objAccount')));
	}
})
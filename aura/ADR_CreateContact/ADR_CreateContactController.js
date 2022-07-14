({
	doInit : function(component, event, helper) {
		
        helper.displayContact(component);
        
	},
    createNewContact : function(component, event, helper) {
		helper.createNewContact(component);
        helper.displayContact(component);
        
	}
})
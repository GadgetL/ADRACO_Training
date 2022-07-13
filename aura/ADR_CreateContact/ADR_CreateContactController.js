({
	doInit : function(component, event, helper) {
		helper.displayContacts(component);
	},
    createContactContr : function(component, event, helper) {
		helper.createContactHelper(component);
        helper.displayContacts(component);
	}     
})
({
	doInit : function(component, event, helper) {
		helper.displayContact(component);

	},
    CreateNewContact: function(component, event, helper) {
        helper.createContact(component);
        helper.displayContact(component);
    }
})
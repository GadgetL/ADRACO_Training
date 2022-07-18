({
	doInit : function(component, event, helper) {
		helper.displayContactsHelper(component);
	},
    saveContact : function(component, event, helper){
        helper.createNewContactHelper(component);
        helper.displayContactsHelper(component);
    }
})
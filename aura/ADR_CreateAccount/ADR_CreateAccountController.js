({
	doInit : function(component, event, helper) {
		
        helper.displayAccount(component);
	},
    createNewAccount: function(component, event, helper) {
        console.log("Create Account --->");
    	helper.createNewAccount(component);
        helper.displayAccount(component);
	}
})
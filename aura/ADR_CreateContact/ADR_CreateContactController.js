({
    doInit : function(component, event, helper) {
        console.log("DoInit method--->");
		helper.displayContacts(component);
	},
     
	createNewContact : function(component, event, helper) {
		console.log("createContact--->");
        console.log("Controller "+JSON.stringify(component.get('v.objContact')));
    	helper.createContactHelper(component);
        helper.displayContacts(component);
	}
})
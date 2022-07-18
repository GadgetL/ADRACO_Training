({
	doinit: function(component, event, helper) {
		helper.displayOpportunity(component);  
	},
    createOpportunity: function(component, event, helper) {
		helper.createNewOpportunityHelper(component);  
        helper.displayOpportunity(component);
		console.log("Controller "+JSON.stringify(component.get('v.objOpportunity')));
	}
})
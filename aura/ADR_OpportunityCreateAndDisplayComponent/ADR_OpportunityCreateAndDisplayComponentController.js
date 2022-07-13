({
	doInit : function(component, event, helper) {
		helper.displayOpportunities(component);
	},
    createOpportunityComp : function(component, event, helper) {
		helper.createOpportunityHelper(component);
        helper.displayOpportunities(component);
	}   
})
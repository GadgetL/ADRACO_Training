({
	doInit : function(component, event, helper) {
		helper.displayOpportunities(component);

	},
    CreateNewOpportunity: function(component, event, helper) {
        helper.createOpportunity(component);
        helper.displayOpportunities(component);
    }
})
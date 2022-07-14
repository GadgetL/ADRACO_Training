({
	doInit : function(component, event, helper) {
		
        helper.displayOpportunity(component);
        
	},
    createNewOpportunity : function(component, event, helper) {
		helper.createNewOpportunities(component);
        helper.displayOpportunity(component);
        
	}
})
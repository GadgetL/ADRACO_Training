({
	doInit : function(component, event, helper) {
        console.log("DoInit method--->");
		helper.displayOpportunitys(component);
	},
     
	createNewOpportunity : function(component, event, helper) {
		console.log("createOpportunity--->");
        console.log("Controller "+JSON.stringify(component.get('v.objOpportunity')));
    	helper.createOpportunityHelper(component);
        helper.displayOpportunitys(component);
	}
})
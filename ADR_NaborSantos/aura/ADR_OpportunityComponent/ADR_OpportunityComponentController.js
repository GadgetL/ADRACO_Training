({
    doInit : function(component, event, helper) {
		console.log("Component cargado!");        
        helper.OpportunityHelperMethod(component);
        helper.getOppbyParams(component);
	}
})
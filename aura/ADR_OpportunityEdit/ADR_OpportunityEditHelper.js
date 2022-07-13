({
	OpportunityData : function(component) {
		var action=component.get("c.getLstOpportunities");

        	action.setCallback(this,function(res){

         	component.set("v.data",res.getReturnValue()); 
        });
        $A.enqueueAction(action);
	}
})
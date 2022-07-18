({
	OpportunityHelperMethod : function(component) {
		var action=component.get("c.fetchOpportunityRecords")
        action.setCallback(this,function(res){
            console.log("estatus---->" + res.getState());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));
            component.set("v.lstOpportunity",res.getReturnValue());
            console.log(component.get("v.lstOpportunity"));
        } );
        $A.enqueueAction(action);
	},
    
    getOpportunityByName : function(component) {
		var action=component.get("c.fetchOpportunityRecord");
        action.setParams({
            "strOpportunityName" : 'Edge Communications'
        });
        action.setCallback(this,function(res){
            console.log("estatus---->" + res.getState());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));
            component.set("v.lstOpportunity",res.getReturnValue());
            console.log(component.get("v.lstOpportunity"));
        } );
        $A.enqueueAction(action);
	}
    
    
    
})
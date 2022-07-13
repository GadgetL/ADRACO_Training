({
    OpportunityHelperMethod : function(component) {
        var action=component.get("c.fetchOpportunityRecords");
        action.setCallback(this,function(res){


          	component.set("v.lstOpportunity",res.getReturnValue()); 
        });
        $A.enqueueAction(action);
	},
    getOpportunityByAccount : function(component) {
        var action=component.get("c.fetchOpportunityRecord");
        action.setParams({
            "strAccountName":'Grand Hotels & Resorts Ltd'
        });
        action.setCallback(this,function(res){
            console.log("status----->"+res.getState());
            console.log("status----->"+res.getReturnValue());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));

          	component.set("v.lstOpportunityByAccount",res.getReturnValue()); 
        	console.log(component.get("v.lstOpportunityAccount",null));
        });
        $A.enqueueAction(action);
    }
})
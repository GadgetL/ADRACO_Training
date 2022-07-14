({
	OpportunityData : function(component) {
		var action = component.get("c.getLstOpportunities");
        action.setCallback(this,function(res){
            console.log("Estatus" + res.getState());
            console.log("Data--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.data",res.getReturnValue());
           	//console.log(component.get("v.data"));
        });
        $A.enqueueAction(action);
	},
})
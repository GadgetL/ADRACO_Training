({
	opportunityData : function(component) {
		var action = component.get("c.getListContact");
        action.setCallback(this, function(res){
        	console.log("estatus -->" + res.getState());
            console.log("data -->" + res.getReturnValue());
			component.set("v.data", res.getReturnValue());         
        });
        $A.enqueueAction(action);
	}
})
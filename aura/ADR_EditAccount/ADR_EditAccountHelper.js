({
	AccountData : function(component) {
		var action=component.get("c.getLstAccounts");

        	action.setCallback(this,function(res){

         	component.set("v.data",res.getReturnValue()); 
        });
        $A.enqueueAction(action);
	}
})
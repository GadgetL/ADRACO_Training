({
	AccountHelperMethod : function(component) {
		var action=component.get("c.fetchAccountRecords")
        action.setCallback(this,function(res){
            console.log("estatus---->" + res.getState());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));
            component.set("v.lstAccount",res.getReturnValue());
            console.log(component.get("v.lstAccount"));
        } );
        $A.enqueueAction(action);
	},
    
    getAccountByName : function(component) {
		var action=component.get("c.fetchAccountRecords")
        action.setParams({
            "strAccountName" : 'Sample Account for Entitlements'
        });
        action.setCallback(this,function(res){
            console.log("estatus---->" + res.getState());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));
            component.set("v.lstAccount",res.getReturnValue());
            console.log(component.get("v.lstAccount"));
        } );
        $A.enqueueAction(action);
	}
    
    
    
})
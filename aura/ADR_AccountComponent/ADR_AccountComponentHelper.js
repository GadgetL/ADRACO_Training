({
	AccountHelperMethod : function(component) {
        console.log("Metodo en helper");
		var action = component.get("c.fetchAccountRecords");
        action.setCallback(this, function(res){
            console.log("estatus: " + res.getState());
            console.log("estatus: " + JSON.stringify(res.getReturnValue()));
            component.set("v.lstAccounts",res.getReturnValue());
            console.log(component.get("v.lstAccounts"));
        });
        $A.enqueueAction(action);
	},
    
    getAccountByName : function(component) {
        console.log("Metodo en helper");
		var action = component.get("c.fetchAccountRecord");
        action.setParams({
            "strAccountName" : 'Grand Hotels & Resorts Ltd'
        });
        action.setCallback(this, function(res){
            console.log("estatus: " + res.getState());
            console.log("estatus: " + JSON.stringify(res.getReturnValue()));
            component.set("v.lstAccounts",res.getReturnValue());
            console.log(component.get("v.lstAccounts"));
        });
        $A.enqueueAction(action);
	}
})
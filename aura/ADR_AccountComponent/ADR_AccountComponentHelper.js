({
	AccountHelperMethod : function(component) {
        console.log("Estoy en el helper :>");
        var action = component.get("c.fetchAccountRecords");
        action.setCallback(this, function(res){
            console.log("estatus -->" + res.getState());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));
			component.set("v.lstAccounts", res.getReturnValue());
            console.log(component.get("v.lstAccounts"));
        });
        $A.enqueueAction(action);
	},
    
    getAccountByName : function(component) {
        console.log("Estoy en el helper :>");
        var action = component.get("c.fetchAccountRecord");
        action.setParams({"strAccountName" : 'Edge Communications'});
        action.setCallback(this, function(res){
            console.log("estatus -->" + res.getState());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));
			component.set("v.lstAccounts", res.getReturnValue());
            console.log(component.get("v.lstAccounts"));
        });
        $A.enqueueAction(action);
	}
})
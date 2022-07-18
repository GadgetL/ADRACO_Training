({
	AccountHelperMethod : function(component) {
		console.log("Método en helper");
        //Accedemos al método de la clase ADR_DisplayListOfAccount
        var action=component.get("c.fetchAccountRecords");
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Value--->"+JSON.stringify(res.getReturnValue()));
            //Los valores obtenidos se guardan en la variable lstAccounts (v.lstAccounts)
            component.set("v.lstAccounts",res.getReturnValue());
            console.log(component.get("v.lstAccounts"));
        });
        $A.enqueueAction(action);
	},
    
    getAccountByName : function(component) {
		console.log("Método en helper");
        //Accedemos al método de la clase ADR_DisplayListOfAccount
        var action=component.get("c.fetchAccountRecord");
        //Establecemos el valor del parametro
        action.setParams({
            "strAccountName" : 'Update Insrt0'
        });
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Value--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstAccounts",res.getReturnValue());
            console.log(component.get("v.lstAccounts"));
        });
        $A.enqueueAction(action);
	}
})
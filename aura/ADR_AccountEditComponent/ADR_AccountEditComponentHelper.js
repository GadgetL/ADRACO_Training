({
	AccountDataHelper : function(component) {
        //Llamada al médoto de la clase ADR_AccountEdit
        var action = component.get("c.getLstAccounts");
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Data--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.data",res.getReturnValue());
        });
		$A.enqueueAction(action);
	}
})
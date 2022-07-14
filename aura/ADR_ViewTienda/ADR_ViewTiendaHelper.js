({
		displayTienda : function(component) {
		var action = component.get("c.fetchTiendaRecords");
        action.setCallback(this,function(res){
            console.log("Estatus" + res.getState());
            console.log("Data--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstTienda",res.getReturnValue());
           	console.log(component.get("v.lstTienda"));
        });
        $A.enqueueAction(action);
	},
})
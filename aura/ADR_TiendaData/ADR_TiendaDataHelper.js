({
	TiendaHelperMethod : function(component) {
        var action=component.get("c.fetchTiendaRecords");
        action.setCallback(this,function(res){


          	component.set("v.lstTiendas",res.getReturnValue()); 
        });
        $A.enqueueAction(action);
	}
})
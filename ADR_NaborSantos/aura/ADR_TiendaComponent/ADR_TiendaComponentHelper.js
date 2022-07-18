({
	TiendaHelperMethod : function(component) {        
        var action = component.get("c.lstTiendasApex");
        action.setCallback(this, function(res){            
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));
			component.set("v.lstTiendas", res.getReturnValue());            
        });
        $A.enqueueAction(action);
	}
})
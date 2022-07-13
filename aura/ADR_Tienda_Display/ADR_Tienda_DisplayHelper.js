({
	TiendaHelperMethod : function(component) {
        console.log("------------");
       var action=component.get("c.displayTienda");
        console.log("------------");
        action.setCallback(this,function(res){
            console.log("estatus---->"+res.getState());
            component.set("v.lstContacts" , res.getReturnValue());
            console.log(component.get("v.lstContacts"));
        });
        $A.enqueueAction(action);
        console.log('HELPER');
	}
})
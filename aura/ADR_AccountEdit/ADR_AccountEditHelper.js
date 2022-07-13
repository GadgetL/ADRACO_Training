({
	AccountData : function(component) {
        
       var action=component.get("c.getLstAccount");
        action.setCallback(this,function(res){
            console.log("estatus---->"+res.getState());
            
            component.set("v.data" , res.getReturnValue());
            
        });
        $A.enqueueAction(action);
        console.log('HELPER');},
})
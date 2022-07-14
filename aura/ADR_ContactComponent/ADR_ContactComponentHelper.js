({
	ContactHelperMethod : function(component) {
		console.log("Helper activado");
        var action = component.get("c.fetchContactRecords");
        action.setCallback(this, function(res){
            console.log("Estatus:" + res.getState()); 
            console.log("Valores:" + JSON.stringify(res.getReturnValue()));
            component.set("v.lstContact", res.getReturnValue());
            console.log(component.get("v.lstContact"));
        });
        $A.enqueueAction(action);
	},
    
    getContactByLastOrEmail : function(component) {
		console.log("Helper activado");
        
        
        var action = component.get("c.fetchContactRecord");
        action.setParams({
            "strLastName" : 'Green',
            "strEmail": 'efrank@genepoint.com'
            
        });
        action.setCallback(this, function(res){
            console.log("Estatus:" + res.getState()); 
            console.log("Valores:" + JSON.stringify(res.getReturnValue()));
            component.set("v.lstContact", res.getReturnValue());
            console.log(component.get("v.lstContact"));
        });
        $A.enqueueAction(action);
	}
})
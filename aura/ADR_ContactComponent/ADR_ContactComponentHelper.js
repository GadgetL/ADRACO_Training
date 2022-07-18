({
	ContactHelperMethod : function(component) {
		var action=component.get("c.fetchContactRecords")
        action.setCallback(this,function(res){
            console.log("estatus---->" + res.getState());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));
            component.set("v.lstContact",res.getReturnValue());
            console.log(component.get("v.lstContact"));
        } );
        $A.enqueueAction(action);
	},
    
    getContactByName : function(component) {
		var action=component.get("c.fetchContactRecord");
        action.setParams({
            "strContactLastName" : 'Gonzalez', 
    		"strContactEmail" : 'sean@edge.com'
        });
        action.setCallback(this,function(res){
            console.log("estatus---->" + res.getState());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));
            component.set("v.lstContact",res.getReturnValue());
            console.log(component.get("v.lstContact"));
        } );
        $A.enqueueAction(action);
	}
})
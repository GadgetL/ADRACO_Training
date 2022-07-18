({
	ContactHelperMethod : function(component) {
        console.log("Estoy en el helper de Contacto");
        var action = component.get("c.fetchContactRecords");
        action.setCallback(this, function(res){
            console.log("estatus -->" + res.getState());
			component.set("v.lstContacts", res.getReturnValue());
            console.log(component.get("v.lstContacts"));
        });
        $A.enqueueAction(action);
	},
    
    getContactbyParams : function(component) {
        console.log("Estoy en el helper de Contacto");
        var action = component.get("c.fetchContactRecord");
        action.setParams({
            "strContactLastName" : 'Foam',
            "strContactEmail" : 'vnorth@trailhead.com'
        });       
        action.setCallback(this, function(res){
            console.log("estatus -->" + res.getState());
			component.set("v.lstContacts", res.getReturnValue());
            console.log(component.get("v.lstContacts"));
        });
        $A.enqueueAction(action);
	}
})
({
	displayContacts : function(component) {
        var action = component.get("c.displayContactList");
        action.setCallback(this, function(res){
            console.log("estatus -->" + res.getState());
			component.set("v.lstContacts", res.getReturnValue());
            console.log(component.get("v.lstContacts"));
        });
        $A.enqueueAction(action);
	},
    createContactHelper : function(component) {  
    	var action=component.get("c.createNewContact");
    	action.setParams({
    		"objContact" : component.get('v.objContact')
		});
        action.setCallback(this,function(response){
            var state= response.getState();
            console.log('State: '+response.getState());
            if(state === "SUCCESS"){
                console.log("El contacto fue insertado");
                 var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title : 'Success',
                    message: 'The record Created successfully.',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester' 
                });
                toastEvent.fire();
            }else{
              console.log("El contacto no se pudo insertar");  
            }
        });
        $A.enqueueAction(action);
	}
})
({
	displayContact : function(component) {
        var action=component.get("c.displayContacts");

        action.setCallback(this,function(res){

          	component.set("v.lstContact",res.getReturnValue()); 
        });
        $A.enqueueAction(action);
	},
    createContact : function(component) {    
    	var action=component.get("c.createContact");
    	action.setParams({
    		"objContact" : component.get('v.objContact')
		});
        action.setCallback(this,function(res){
            var state= res.getState();
            if(state === "SUCCESS"){
                console.log("El contacto fue insertado");
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title : 'Success',
                    message: 'This is a success message',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester'
                });
                toastEvent.fire();

            }else{
              console.log("El contacto no se pudo insertar");  
            }
            
        } );
        $A.enqueueAction(action);
	}

	
})
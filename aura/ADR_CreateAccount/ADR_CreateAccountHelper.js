({
	displayAccount : function(component) {
		var action = component.get("c.displayAccount");
        action.setCallback(this,function(res){
            console.log("Estatus" + res.getState());
            console.log("Data--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstAccount",res.getReturnValue());
           	console.log(component.get("v.lstAccount"));
        });
        $A.enqueueAction(action);
	},
    createNewAccount : function(component) {    
    	var action=component.get("c.createAccount");
    	action.setParams({
    		"objAccount" : component.get('v.objAccount')
		});
        action.setCallback(this,function(res){
            var state= res.getState();
            if(state === "SUCCESS"){
                console.log("La cuenta fue insertada");
                 var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title : 'Success',
                    message: 'The Account was created successfully',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester' 
                });
                toastEvent.fire();
            }else{
              console.log("La cuenta no se pudo insertar");  
            }
            
        } );
        $A.enqueueAction(action);
	}


    
})
({
	displayAccounts : function(component) {
        var action=component.get("c.displayAccounts");
       action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Data--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstAccounts",res.getReturnValue());
            console.log(component.get("v.lstAccounts"));
        } );
        $A.enqueueAction(action);
		
	},
   createNewAccountHelper : function(component) {  
        console.log("Data Helper2: "+JSON.stringify(component.get('v.objAccount')));
    	var action=component.get("c.createNewAccount");
    	action.setParams({
    		"objAccount" : component.get('v.objAccount')
		});
        action.setCallback(this,function(response){
            var state= response.getState();
            console.log('State: '+response.getState());
            if(state === "SUCCESS"){
                console.log("La cuenta fue insertada");
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
              console.log("La cuenta no se pudo insertar");  
            }
            } );
        $A.enqueueAction(action);
	}
})
({
		displayContact : function(component) {
        var action=component.get("c.displayContact");
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Data--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstContact",res.getReturnValue());
            console.log(component.get("v.lstContact"));
        } );
        $A.enqueueAction(action);
		
	}
   , 		
  createNewContactHelper : function(component) {  
        console.log("Data Helper2: "+JSON.stringify(component.get('v.objContact')));
    	var action=component.get("c.createNewContact");
    	action.setParams({
    		"objContact" : component.get('v.objContact')
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
}

)
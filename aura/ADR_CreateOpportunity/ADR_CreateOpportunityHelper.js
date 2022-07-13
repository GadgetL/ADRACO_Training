({
	displayOpportunities : function(component) {
		var action=component.get("c.displayOpportunities");

        action.setCallback(this,function(res){

          	component.set("v.lstOpportunity",res.getReturnValue()); 
        });
        $A.enqueueAction(action);
	},
    createOpportunity : function(component) {    
    	var action=component.get("c.createOpportunity");
    	action.setParams({
    		"objOpportunity" : component.get('v.objOpportunity')
		});
        action.setCallback(this,function(res){
            var state= res.getState();
            if(state === "SUCCESS"){
                console.log("La cuenta fue insertada");
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
              console.log("La cuenta no se pudo insertar");  
            }
            
        } );
        $A.enqueueAction(action);
	}

	
})
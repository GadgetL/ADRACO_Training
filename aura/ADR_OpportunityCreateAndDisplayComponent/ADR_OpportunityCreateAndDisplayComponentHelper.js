({
	displayOpportunities : function(component) {
        var action = component.get("c.displayOpporList");
        action.setCallback(this, function(res){
            console.log("estatus -->" + res.getState());
			component.set("v.lstOpportunities", res.getReturnValue());
            console.log(component.get("v.lstOpportunities"));
        });
        $A.enqueueAction(action);
	},
    createOpportunityHelper : function(component) {          
    	var action=component.get("c.createOpportunity");
    	action.setParams({
    		"objOpportunity" : component.get('v.objOpportunity')
		});
        action.setCallback(this,function(response){
            var state= response.getState();
            console.log('State: '+response.getState());
            var toastEvent = $A.get("e.force:showToast");
            if(state === "SUCCESS"){
                console.log("La opportunidad fue insertada");                
                toastEvent.setParams({
                    title : 'Success',
                    message: 'The record Created successfully.',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester' 
                });
                toastEvent.fire();
            }
            else{
            	toastEvent.setParams({
               		title : 'Error',
                    message: 'Error with the server.',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'error',
                    mode: 'pester' 
                });
                toastEvent.fire();
            }
        });
        $A.enqueueAction(action);        
    }
})
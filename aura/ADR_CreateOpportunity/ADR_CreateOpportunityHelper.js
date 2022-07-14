({
	displayOpportunity : function(component) {
        var action = component.get("c.displayOpportunity");
        action.setCallback(this,function(res){
            console.log("Estatus" + res.getState());
            console.log("Data--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstOpportunity",res.getReturnValue());
           	console.log(component.get("v.lstOpportunity"));
        });
        $A.enqueueAction(action);
        
		
	},
    createNewOpportunities : function(component) {    
    	var action=component.get("c.createOpportunity");
        
        action.setParams({ 
            "objOpportunity" : component.get('v.objOpportunity')
        });
    	
        	 action.setCallback(this,function(res){
            var state= res.getState();
            if(state === "SUCCESS"){
                console.log("La oportunidad fue creada");
                 var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title : 'Success',
                    message: 'The Opportunity was created successfully',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester' 
                });
                toastEvent.fire();
            }else{
              console.log("La oportunidad no se pudo insertar");  
            }
            
        } );
        $A.enqueueAction(action);
        
	}
})
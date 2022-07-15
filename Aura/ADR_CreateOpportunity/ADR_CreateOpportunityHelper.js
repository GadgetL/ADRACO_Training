/************************************************************************************************************
 * Name: ADR_CreateOpportunityHelper
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Helper for display values of List Opportunities, and set paramas for create of record in the class 
 *  apex .
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Creation of method createOpportunity
*/
({
	DisplayOpportunity :function(component) {
		var action = component.get("c.displayOpportunitys");
        action.setCallback(this, function(res){
            //console.log("estatus-->"+JSON.stringify(res.getState()));
            component.set("v.lstOpportunity", res.getReturnValue());
            console.log(component.get("v.lstOpportunity")); 
        });
        $A.enqueueAction(action);
	},
    createOpportunity : function(component){    
    	var action=component.get("c.createOpportunitys");
    	action.setParams({
    		"objOppor" : component.get('v.objOpportunity')
		});
        action.setCallback(this,function(res){
            var state= res.getState();
            if(state === "SUCCESS"){
                console.log("El Contacto fue insertado");
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
            
        } );
        $A.enqueueAction(action);
	}
})
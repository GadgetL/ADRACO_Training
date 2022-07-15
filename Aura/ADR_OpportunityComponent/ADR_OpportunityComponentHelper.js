/************************************************************************************************************
 * Name: ADR_OpportunityComponetHelper
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Helper for conection with Class Apex, set params and values obtention of objects.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 23-06-2022			 | v0.1				 | Creation of method OpportunityHLimit5
*/
({
	
    OpportunityHelperMethod : function(component) {
		//console.log('Metodo en helper');
        var action = component.get("c.fetchOpportunityRecords");
        action.setCallback(this, function(res){
            console.log("estatus-->"+JSON.stringify(res.getState()));
            component.set("v.lstOpportunity", res.getReturnValue());
            console.log(component.get("v.lstOpportunity")); 
        });
        $A.enqueueAction(action);
	},
    OpportunityHLimit5 : function(component) {
		//console.log('Metodo en helper');
        var action = component.get("c.fetchOpportunityRecor");
        action.setParams({
            "strName" : 'Burlington Textiles Corp of America' 
        });
        action.setCallback(this, function(res){
            console.log("estatus-->"+JSON.stringify(res.getState()));
            component.set("v.lstOpportunity2", res.getReturnValue());
            console.log(component.get("v.lstOpportunity2")); 
        });
        $A.enqueueAction(action);
	}
})
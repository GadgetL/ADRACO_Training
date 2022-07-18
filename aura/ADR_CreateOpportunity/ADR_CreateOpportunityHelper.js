({
	displayOpportunityHelper : function(component) {
        //Llamada al médoto de la clase ADR_OpportunityInsertAndDisplay
		var action = component.get("c.displayOpportunity");
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Value--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstOpps",res.getReturnValue());
        });
		$A.enqueueAction(action);
	},
    createOpportunityHelper : function(component) {
        console.log("Data createOpportunityHelper: "+JSON.stringify(component.get('v.objOpp')));
        //Llamada al médoto de la clase ADR_OpportunityInsertAndDisplay
        var action = component.get("c.createOpportunity");
        //Establecer los valores del parámetro
        action.setParams({
            "objOpp" : component.get('v.objOpp') 
        });
        action.setCallback(this,function(res){
            var state = res.getState();
        	if(state === "SUCCESS"){
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title : 'Success',
                    message: 'The Opportunity was insert successfull',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester'
                });
                toastEvent.fire();
            }else{
                console.log("Error Opportunity");
            }
        });
		$A.enqueueAction(action);
    }
})
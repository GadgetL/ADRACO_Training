({
	OpportunityHelperMethod : function(component) {
        //Llamamos al método de la clase ADR_DisplayListOfOpportunity
		var action = component.get("c.lstOppAccount");
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Value--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstOpportunities",res.getReturnValue());
        });
		$A.enqueueAction(action);
	},
    OpportunityByNameHelperMethod : function(component){
        //Llamamos al método de la clase ADR_DisplayListOfOpportunity
        var action = component.get("c.lstOppByName");
        //Establecemos los valores del parámetro
        action.setParams({
            "strAccountName" : 'United Oil & Gas Corp.'
        });
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Value--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstOppByName",res.getReturnValue());
        });
		$A.enqueueAction(action);
    }
})
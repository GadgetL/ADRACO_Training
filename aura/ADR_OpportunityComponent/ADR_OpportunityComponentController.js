({

        doInit : function(component, event, helper) {
		console.log("Componente cargado");
        helper.OpportunityHelperMethod(component);
	},
        doInitBy : function(component, event, helper) {
		console.log("Componente cargado");
        helper.getOpportunityByAccount(component);
	},
})
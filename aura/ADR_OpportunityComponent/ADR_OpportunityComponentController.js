({
	doInit : function(component, event, helper) {
        console.log("Componente Cargando!!");
        helper.OpportunityHelperMethod(component);
         console.log("Componente Cargando------!!");
        helper.getOpportunityByName(component);
        
        console.log("Componente Cargando------2!!");
        
        
		
	}
})
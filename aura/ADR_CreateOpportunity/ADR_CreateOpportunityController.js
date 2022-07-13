({
	doInit : function(component, event, helper) {
        console.log("Componente Cargando!!");
        helper.displayOpportunitys(component);
		
	},
    createOpportunity : function(component, event, helper){
       	console.log("---------------------");
        
        helper.createNewOpportunityHelper(component);
        helper.displayOpportunitys(component);
        
    }
})
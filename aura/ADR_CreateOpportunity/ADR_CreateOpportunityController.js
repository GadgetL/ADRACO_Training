({
    //Muestra las oportunidades
	doInit : function(component, event, helper) {
		helper.displayOpportunityHelper(component);
	},
    //Crea oportunidad
    saveOpportunity : function(component, event, helper){
        helper.createOpportunityHelper(component);
      	helper.displayOpportunityHelper(component);
        /*let objOp=component.get('v.objOpp');
        if(objOp != null){
            c.set('v.isButtonActive',false);
            helper.createOpportunityHelper(component);
        	helper.displayOpportunityHelper(component);
        }*/
        
    }
})
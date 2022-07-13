({
    OpportunityHelperMethod : function(component) {
        console.log("Estoy en el helper de Oportunidad");
        var action = component.get("c.fetchOpportunityRecord");
        action.setCallback(this, function(res){
            console.log("estatus -->" + res.getState());
			component.set("v.lstOpportunities", res.getReturnValue());
            console.log(component.get("v.lstOpportunities"));
        });
        $A.enqueueAction(action);
	},
    
    getOppbyParams : function(component) {
        console.log("Estoy en el helper de Oportunidad");
        var action = component.get("c.fetchOpportunityRecordName");
        action.setParams({            
            "strName1" : 'Dickenson plc',
			"strName3" : 'Pyramid Construction Inc.',
            "strName4" : 'Burlington Textiles Corp of America',       
            "strName2" : 'United Oil & Gas Corp.',
            "strName5" : 'Edge Communications'
        });       
        action.setCallback(this, function(res){
            console.log("estatus -->" + res.getState());
			component.set("v.lstNameOpportunities", res.getReturnValue());
            console.log(component.get("v.lstNameOpportunities"));
        });
        $A.enqueueAction(action);
	}
})
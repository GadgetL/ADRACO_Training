({
    opportunityHelperMethod: function (component){
        console.log("Helper activado");
        var action = component.get("c.fetchOpportunityRecords");
        action.setCallback(this, function(res){
            console.log("Estatus:" + res.getState()); 
            console.log("Valores:" + JSON.stringify(res.getReturnValue()));
            component.set("v.lstOpportunity", res.getReturnValue());
            console.log(component.get("v.lstOpportunity"));
        });
        $A.enqueueAction(action);        
    },
    getOpportunitybyName: function (component){
        console.log("Helper activado");
        
        var action = component.get("c.fecthOpportunityRecord");
        action.setParams({
            "strAccountName" : 'United Oil & Gas Corp.'
            
            
        });
        action.setCallback(this, function(res){
            console.log("Estatus:" + res.getState()); 
            console.log("Valores:" + JSON.stringify(res.getReturnValue()));
            component.set("v.lstOpportunities", res.getReturnValue());
            console.log(component.get("v.lstOpportunities"));
        });
        $A.enqueueAction(action);        
    }
    
})
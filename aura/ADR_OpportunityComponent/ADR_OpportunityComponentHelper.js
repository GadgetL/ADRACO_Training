({
	OpportunityHelperMethod : function(component) {
        
       var action=component.get("c.fetchOpportunityRecords");
        action.setCallback(this,function(res){
            console.log("estatus---->"+res.getState());
            component.set("v.lstContacts" , res.getReturnValue());
            console.log(component.get("v.lstContacts"));
        });
        $A.enqueueAction(action);
        console.log('HELPER');},
    getOpportunityByName : function(component) {
       var action=component.get("c.fetchOpportunityRecord");
            action.setParams({
                "strAccountName" : 'GenePoint' 
            }); 
            action.setCallback(this,function(res){
            console.log("estatus---->"+res.getState());
            component.set("v.lstContacts2" , res.getReturnValue());
            console.log(component.get("v.lstContacts2"));
        });
        $A.enqueueAction(action);
        console.log('HELPER');
	}
})
({
	AccountHelperMethod : function(component) {
       var action=component.get("c.fetchAccountRecords");
        action.setCallback(this,function(res){
            console.log("estatus---->"+res.getState());
            component.set("v.lstAccounts" , res.getReturnValue());
            console.log(component.get("v.lstAccounts"));
        });
        $A.enqueueAction(action);
        console.log('HELPER');
	},
    	getAccountByName : function(component) {
       var action=component.get("c.fetchAccountRecords");
            action.setParams({
                'strAccountName' : 'GenePoint' 
            }); 
            action.setCallback(this,function(res){
            console.log("estatus---->"+res.getState());
            component.set("v.lstAccounts" , res.getReturnValue());
            console.log(component.get("v.lstAccounts"));
        });
        $A.enqueueAction(action);
        console.log('HELPER');
	}
})
({
	doInit : function(component, event, helper) {
        console.log("DoInit method--->");
		helper.displayAccounts(component);
	},
    
    createAcc :function(component, event, helper) {
        console.log("CreateNewAccountHelper method--->");
        console.log("Controller "+JSON.stringify(component.get('v.objAcc')));
		//helper.createNewAccountHelper(component);
        //helper.displayAccounts(component);
	},
    
    createNewAccount : function(component, event, helper) {
        console.log("createAccount--->");
        console.log("Controller "+JSON.stringify(component.get('v.objAccount')));
    	helper.createNewAccountHelper(component);
        helper.displayAccounts(component);
    }

})
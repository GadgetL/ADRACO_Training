({
	doInit : function(component, event, helper) {
		helper.displayAccounts(component);
	},
    createNewAccount : function(component, event, helper){
		//console.log("datosController -->" + JSON.stringify(component.get('v.objAccount')));
    	helper.createNewAccountHelper(component);  
        helper.displayAccounts(component);
	}	
})
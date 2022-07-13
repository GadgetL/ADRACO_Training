({
	doInit : function(component, event, helper) {
        console.log("Componente Cargando!!");
        helper.displayAccounts(component);
		
	},
    createAccount : function(component, event, helper){
       	console.log("---------------------");
        console.log("Data" + JSON.stringify(component.get('v.objAccount')));
        helper.createNewAccountHelper(component);
        helper.displayAccounts(component);
        
    }
	})
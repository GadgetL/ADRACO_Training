({
/*	doInit : function(component, event, helper) {
		console.log("Componente cargado");
        helper.AccountHelperMethod(component);
	},
      doInitC : function(component, event, helper) {
		console.log("Componente cargado");
        helper.ContactHelperMethod(component);
	},*/
        doInit : function(component, event, helper) {
		console.log("Componente cargado");
        helper.getAccountByName(component);
	},
        doInitC : function(component, event, helper) {
		console.log("Componente cargado");
        helper.getContactByName(component);
	},
  
})
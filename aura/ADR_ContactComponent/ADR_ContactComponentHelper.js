({
	ContactHelperMethod : function(component) {
        //Llamamos al método de la clase ADR_DisplayListOfContact
        var action = component.get("c.listContactRecords");
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Value--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstContacts",res.getReturnValue());
        });
		$A.enqueueAction(action);
	},
    ContactHelperByLastNameEmailMethod : function(component) {
        //Llamamos al método de la clase ADR_DisplayListOfContact
        var action = component.get("c.listContactNameEmail");
        //Establecemos los valores del parámetro
        action.setParams({
            "strLastName" : 'López',
            "strEmail": 'dluffy@test.com'
        });
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Value--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstContacts",res.getReturnValue());
        });
		$A.enqueueAction(action);
	}
})
({
	displayContactsHelper : function(component) {
        //Lamamos al método de la clase ADR_CreateAndDisplayContactInformation
		var action = component.get("c.displayContacts");
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Value--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstContacts",res.getReturnValue());
        });
		$A.enqueueAction(action);
	},
    createNewContactHelper : function(component) {
        console.log("Data createContactHelper: "+JSON.stringify(component.get('v.objContact')));
        //Lamamos al método de la clase ADR_CreateAndDisplayContactInformation
        var action = component.get("c.createContact");
        //Establemos los valores del parámetro
        action.setParams({
            "objContact" : component.get('v.objContact') 
        });
        action.setCallback(this,function(res){
            var state = res.getState();
            console.log("State--->"+res.getState());
        	if(state === "SUCCESS"){
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    title : 'Success',
                    message: 'The Contact was insert successfully',
                    duration:' 5000',
                    key: 'info_alt',
                    type: 'success',
                    mode: 'pester'
                });
                toastEvent.fire();
            }else{
                console.log("Error Contact");
            }
        });
		$A.enqueueAction(action);
    }
})
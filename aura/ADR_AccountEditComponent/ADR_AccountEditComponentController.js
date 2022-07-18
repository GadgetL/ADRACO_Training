({
	doInit : function(component, event, helper) {
        //Personalizamos la table
		component.set('v.columns',[
            {label:'Id',fieldName:'Id',type:'text',editable:false},
            {label:'Account Name',fieldName:'Name',type:'text',editable:true},
            {label:'Type',fieldName:'Type',type:'text',editable:true},
            {label:'Phone',fieldName:'Phone',type:'number',editable:true},
            {label:'Website',fieldName:'Website',type:'text',editable:true}
        ]);
        helper.AccountDataHelper(component);
	},
    
    handlersave : function(component, event, helper) {
        //Guardamos los nuevos valores
        var draftValues=event.getParam('draftValues');
        //Llamada al médoto de la clase ADR_AccountEdit
        var action = component.get("c.updateAccount");
        //Establecer los valores del parámetro
        action.setParams({
            "lstAccounts" : draftValues
        });
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                var data= response.getReturnValue();
                if(data==true){
                    var toastEvent = $A.get("e.force:showToast");
                    toastEvent.setParams({
                        "title": "Success",
                        "type": "Success",
                        "message": "Record was update successfully"
                    });
                    toastEvent.fire();
                    $A.get('e.force:refreshView').fire(); 
                }else{ 
                    toastEvent.setParams({ 
                        "title": "Error!", 
                        "type": "error", 
                        "message": "Error with the server"
                    }); 
                    toastEvent.fire();
                }
            }
        });
        $A.enqueueAction(action); 
    },
})
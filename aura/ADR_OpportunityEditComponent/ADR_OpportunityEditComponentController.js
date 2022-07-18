({
	doInit : function(component, event, helper) {
		//Personalizamos la table
        component.set('v.columns',[
            {label:'Id',fieldName:'Id',type:'text',editable:false},
            {label:'Name',fieldName:'Name',type:'text',editable:true},
            {label:'Amount',fieldName:'Amount',type:'currency',editable:true},
            {label:'CloseDate',fieldName:'CloseDate',type:'date',editable:true}
        ]);
        helper.OpportunityDataHelper(component);
	},
    
    handlersave : function(component, event, helper) {
        var draftValues=event.getParam('draftValues');
        //Llamada al médoto de la clase ADR_OpportunityEdit
        var action = component.get("c.updateOpportunity");
        //Establecer los valores del parámetro
        action.setParams({
            "lstOpportunities" : draftValues
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
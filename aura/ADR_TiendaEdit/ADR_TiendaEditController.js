({
	doInit : function(component, event, helper) {
		component.set('v.columns',[
            {label:'Id',fieldName:'Id',type:'text',editable:false},
            {label:'Name',fieldName:'Name',type:'text',editable:true},
            {label:'CreatedDate',fieldName:'CreatedDate',type:'Date',editable:true},
            {label:'ADR_Type__c',fieldName:'ADR_Type__c',type:'text',editable:true}
        ]);
        helper.TiendaData(component);
	},
    
    handlesave : function(component, event, helper) {
     var draftValues=event.getParam('draftValues');
     var action= component.get("c.updateTiendas");
        action.setParams({
            "lstTiendas":draftValues
            
        });
			action.setCallback(this, function(response) {
           var state = response.getState();
             if(state === "SUCCESS"){
                 	var data= response.getReturnValue();
                 var toastEvent = $A.get("e.force:showToast");
                 if(data==true){
                        toastEvent.setParams({
                            "title": "Success!",
                            "type": "success",
                            "message": "Record was updated successfully"
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
({
	doInit : function(component, event, helper) {
		component.set('v.columns',[
            {label:'Id',fieldName:'Id',type:'text',editable:false},
            {label:'First Name',fieldName:'FirstName',type:'text',editable:true},
            {label:'Last Name',fieldName:'LastName',type:'text',editable:true},
            {label:'Phone',fieldName:'Phone',type:'text',editable:true},
            {label:'Description',fieldName:'Description',type:'text',editable:true}
        ]);
        helper.ContactData(component);
	},
    
    handlesave : function(component, event, helper) {
     var draftValues=event.getParam('draftValues');
     var action= component.get("c.updateContact");
        action.setParams({
            "lstContacts":draftValues
            
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
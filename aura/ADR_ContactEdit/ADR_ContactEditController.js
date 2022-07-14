({
	doInit : function(component, event, helper) {
		component.set('v.columns',[
            {label:'Id',fieldName:'Id',type:'text',editable:false },
            {label:'Last Name',fieldName:'LastName',type:'text',editable:true },
            {label:'First Name',fieldName:'FirstName',type:'text',editable:true },
            {label:'Phone',fieldName:'Phone',type:'text',editable:true},
            {label:'Email',fieldName:'Email',type:'email',editable:true},
            {label:'Department',fieldName:'Department',type:'text',editable:true},
            {label:'Languages',fieldName:'Languages__c',type:'text',editable:true},
        ]);
        helper.ContactData(component);
	},
    
    handlesave: function(component, event, helper) {
       var draftValues =event.getParam('draftValues');
       
       var action= component.get("c.updateContact");
       action.setParams({
            "lstContact"  :draftValues
       });
       
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                var data = response.getReturnValue();
                var toastEvent = $A.get("e.force:showToast");
                if(data == true){
                    toastEvent.setParams({
                        title : 'Success',
                        message: 'The Contact was updated successfully',
                        
                        type: 'success'
                        
                    });
                    toastEvent.fire();
                    $A.get('e.force:refreshView').fire();
                }else{
                     toastEvent.setParams({
                        title : 'Error',
                        message: 'An error has ocurred',
                        type: 'error'
                    });
                    toastEvent.fire();
                }
            }else{
                
            }
        });
        $A.enqueueAction(action);
    },
})
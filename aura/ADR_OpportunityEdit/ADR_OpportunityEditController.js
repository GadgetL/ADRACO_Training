({
	doInit : function(component, event, helper) {
		component.set('v.columns',[
            {label:'Id',fieldName:'Id',type:'text',editable:false,  iconName: 'standard:account' },
            {label:'Name',fieldName:'Name',type:'text',editable:true},
            {label:'Amount',fieldName:'Amount',type:'currency',editable:true},
            {label:'Close Date',fieldName:'CloseDate',type:'date-local',editable:true, iconName: 'standard:date_input'}
        ]);
        helper.OpportunityData(component);
	},
    
    handlesave: function(component, event, helper) {
       var draftValues =event.getParam('draftValues');
       var action= component.get("c.updateOpportunity");
        action.setParams({
            "lstOpportunities": draftValues
            
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                var data = response.getReturnValue();
                var toastEvent = $A.get("e.force:showToast");
                if(data == true){
                    toastEvent.setParams({
                        title : 'Success',
                        message: 'The Opportunity was updated successfully',
                        
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
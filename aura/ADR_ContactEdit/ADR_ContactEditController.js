({
	doInit : function(component, event, helper) {
        component.set('v.columns', [
            {label:'Id', fieldName: 'Id', type:'text', editable:false},
            {label:'Name', fieldName: 'Name', type:'text', editable:false},
            {label:'LastName', fieldName: 'LastName', type:'text', editable:true},
            {label:'Phone', fieldName: 'Phone', type:'phone', editable:true},
            {label:'Email', fieldName: 'Email', type:'email', editable:true},
            {label:'Birthdate', fieldName: 'Birthdate', type:'date-local', editable:true},
            {label:'Department', fieldName: 'Department', type:'select', editable:true}
        ]);
        helper.opportunityData(component);
	},
    handlesave : function(component, event, helper) {
    	var draftValues=event.getParam('draftValues');
        var action= component.get("c.updateContacts");
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
               	}
                else{
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
    }
})
({
doInit : function(component, event, helper) {
		component.set('v.columns',[
            {label:'Id',fieldName:'Id',type:'text',editable:false},
            {label:'Name',fieldName:'Name',type:'text',editable:true},
            {label:'Type',fieldName:'Type',type:'text',editable:true},
            {label:'Phone',fieldName:'Phone',type:'text',editable:true},
            {label:'WebSite',fieldName:'Website',type:'text',editable:true}
            ]);
        helper.AccountData(component);
	},
   handlesave : function(component, event, helper) {
   		var draftValues=event.getParam('draftValues');
       	var action=component.get('c.updateAccount');
       action.setParams({
           "lstAccounts":draftValues  
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
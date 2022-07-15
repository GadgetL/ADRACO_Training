/************************************************************************************************************
 * Name: ADR_AccountEditController
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Controller for the creation of the fields that are shown in the editable list, showing if the
 *  update was correct or there was an error.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Creation of method handlesave
*/
({
	doInit : function(component, event, helper) {
		component.set(
            'v.columns',[
                {label:'Id', fieldName:'Id', type:'text', editable:false},
                {label:'Name', fieldName:'Name', type:'text', editable:true},
                {label:'Type', fieldName:'Type', type:'text', editable:true},
                {label:'Phone', fieldName:'Phone', type:'phone', editable:true}
            ]);
        helper.AccountsData(component);
	},
    handlesave : function(component, event, helper) {
        var draftValues=event.getParam('draftValues');
        var action=component.get("c.updateAccount");
        console.log(JSON.stringify(draftValues));
        action.setParams({
            "lstAccounts" : draftValues
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
    }
})
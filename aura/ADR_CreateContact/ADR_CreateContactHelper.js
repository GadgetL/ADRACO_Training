({
	displayContacts : function(component) {
        var action=component.get("c.displayContact");
        action.setCallback(this,function(res){
            console.log("estatus--->"+res.getState());
            console.log("Data--->"+JSON.stringify(res.getReturnValue()));
            component.set("v.lstContact",res.getReturnValue());
            console.log(component.get("v.lstContact"));
        } );
        $A.enqueueAction(action);
		
	},
	    
   handlesave : function(component, event, helper) {
     var draftValues=event.getParam('draftValues');
     var action= component.get("c.updateOpportunity");
        action.setParams({
            "lstOpportunities":draftValues
            
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
({
	doInit : function(component, event, helper) {
        //Personalizamos la tabla
		component.set('v.columns',[
            {label:'Id',fieldName:'Id',type:'text',editable:false},
            {label:'First Name',fieldName:'FirstName',type:'text',editable:true},
            {label:'Last Name',fieldName:'LastName',type:'text',editable:true},
            {label:'Title',fieldName:'Title',type:'text',editable:true},
            {label:'Phone',fieldName:'Phone',type:'number',editable:true},
            {label:'Email',fieldName:'Email',type:'email',editable:true}
        ]);
        helper.ContactDataHelper(component);
	},
    
    handlersave : function(component, event, helper) {
        //Traemos los nuevos valores
        var draftValues=event.getParam('draftValues');
        //Llamada al médoto de la clase ADR_ContactEdit 
        var action = component.get("c.updateContact");
        //Establecer los valores del parámetro
        action.setParams({
            "lstContacts" : draftValues
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
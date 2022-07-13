({
	ContactHelperMethod : function(component) {
        console.log("------------");
       var action=component.get("c.fetchContactRecord");
        console.log("------------");
        action.setCallback(this,function(res){
            console.log("estatus---->"+res.getState());
            component.set("v.lstContacts" , res.getReturnValue());
            console.log(component.get("v.lstContacts"));
        });
        $A.enqueueAction(action);
        console.log('HELPER');
	},
    getContactByName : function(component) {
        console.log("------------");
        var action=component.get("c.fetchContactRecords");
        console.log("------------");
            action.setParams({
                "strContactName" : 'Gonzalez',"Email" : 'b.levy@expressl&t.net' 
            }); 
        action.setCallback(this,function(res){
            console.log("estatus---->"+res.getState());
            component.set("v.lstContacts" , res.getReturnValue());
            console.log(component.get("v.lstContacts"));
        });
        $A.enqueueAction(action);
        console.log('HELPER');
	}
})
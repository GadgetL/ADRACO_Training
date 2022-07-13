({
AccountHelperMethod : function(component) {
        var action=component.get("c.fetchAccountRecords");
        action.setCallback(this,function(res){


          	component.set("v.lstAccounts",res.getReturnValue()); 
        });
        $A.enqueueAction(action);
	},
    	ContactHelperMethod : function(component) {
        var action=component.get("c.fetchContactRecords");
        action.setCallback(this,function(res){
            console.log("status----->"+res.getState());
            console.log("status----->"+res.getReturnValue());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));

          	component.set("v.lstContacts",res.getReturnValue()); 
        	console.log(component.get("v.lstContacts",null));
        });
         $A.enqueueAction(action);
      },
    getAccountByName : function(component) {
        var action=component.get("c.fetchAccountRecord");
        action.setParams({
            "strAccountName":'John Bond'
        });
        action.setCallback(this,function(res){
            console.log("status----->"+res.getState());
            console.log("status----->"+res.getReturnValue());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));

          	component.set("v.lstAccounts",res.getReturnValue()); 
        	console.log(component.get("v.lstAccounts",null));
        });
         $A.enqueueAction(action);
      },
       	getContactByName : function(component) {
        var action=component.get("c.fetchContactRecord");
        action.setParams({
            "strContactName":'Sean Forbes',
            "strContactPhone":'(212) 842-5500'
        });
        action.setCallback(this,function(res){
            console.log("status----->"+res.getState());
            console.log("status----->"+res.getReturnValue());
            console.log("datos -->" + JSON.stringify(res.getReturnValue()));

          	component.set("v.lstContacts",res.getReturnValue()); 
        	console.log(component.get("v.lstContacts",null));
        });
         $A.enqueueAction(action);
      }
})
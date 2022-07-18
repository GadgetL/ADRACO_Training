({
    getopplistFunction : function(component) {
         var action = component.get("c.getopplist");
        
        var self = this;
        action.setCallback(this, function(actionResult) {
            
            component.set('v.opportunities', actionResult.getReturnValue());
         });
          $A.enqueueAction(action);
    }
    ,
    getopplistFunction2 : function(component) {
         var action = component.get("c.getopplis");
        
        var self = this;
        action.setCallback(this, function(actionResult) {
            
            component.set('v.opportunities2', actionResult.getReturnValue());
         });
          $A.enqueueAction(action);
    }

})
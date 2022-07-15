/************************************************************************************************************
 * Name: ADR_TiendaDisplayHelper
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Helper for conection with Class Apex, set params and values obtention of objects.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 23-06-2022			 | v0.1				 | Creation of method DisplayTiendas
*/
({
	DisplayTiendas : function(component) {
		var action = component.get("c.displayTienda");
        action.setCallback(this, function(res){
            //console.log("estatus-->"+JSON.stringify(res.getState()));
            component.set("v.lstTiendas", res.getReturnValue());
            console.log(component.get("v.lstTiendas")); 
        });
        $A.enqueueAction(action);
	}
})
/************************************************************************************************************
 * Name: ADR_TiendaDisplayController
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Controller for action doInit 
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Conection with component helper
*/
({
	doInit : function(component, event, helper) {
		helper.DisplayTiendas(component);
	},
})
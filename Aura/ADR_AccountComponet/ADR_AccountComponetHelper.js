/************************************************************************************************************
 * Name: ADR_AccountComponetHelper
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Helper for conection with Class Apex, set params and values obtention of objects.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Creation of method getAccountByName
*/
({
	AccountHelperMethod : function(component) {
		console.log('Metodo en helper');
        var action = component.get("c.fetchAccountRecords");//dentro del controller ve al metodo...
        action.setCallback(this, function(res){//funcion para traer la respuesta del metodo
            //console.log("estatus-->"+JSON.stringify(res.getState()));//colocar formato con json.stringify para ver los datos
            component.set("v.lstAccounts", res.getReturnValue());
            console.log(component.get("v.lstAccounts"));//imprimir lo que tiene 
        });
        $A.enqueueAction(action); //Linea que ejecuta todo lo que tiene la variable, sin esta no se hace nada.
	},
    getAccountByName : function(component) {
		console.log('Metodo en helper');
        var action = component.get("c.fetchAccountRecord");//dentro del controller ve al metodo...
        action.setParams({//paso de parametros para la clase apex
            "strName" : 'Test Contact Trigger update' //se tiene q poner tal cual el nombre de la variable para ejecutarlo
        });
        action.setCallback(this, function(res){//funcion para traer la respuesta del metodo
            //console.log("estatus-->"+JSON.stringify(res.getState()));//colocar formato con json.stringify para ver los datos
            component.set("v.lstAccounts", res.getReturnValue());
            console.log(component.get("v.lstAccounts"));//imprimir lo que tiene 
        });
        $A.enqueueAction(action);
	}
})
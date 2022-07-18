({
	doInit : function(component, event, helper) {
        component.set('v.columns', [
            {label:'Id', fieldName: 'Id', type:'text', editable:false},
            {label:'Nombre', fieldName: 'Name', type:'text', editable:false},
            {label:'Fecha de Inaguración', fieldName: 'ADR_Fecha_Inaguracion__c', type:'text', editable:false},
            {label:'Tipo', fieldName: 'ADR_Type__c', type:'text', editable:false},
        ]);
        helper.tiendaData(component);
	}
})
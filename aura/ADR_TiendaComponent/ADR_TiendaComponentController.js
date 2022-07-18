({
	doInit : function(component, event, helper) {
        //Personalizamos la tabla
		component.set('v.columns',[
            {label:'Id',fieldName:'Id',type:'text',editable:false},
            {label:'Tienda Name',fieldName:'Name',type:'text',editable:false},
            {label:'Type',fieldName:'ADR_Type__c',type:'text',editable:false},
            {label:'Fecha Inauguracion',fieldName:'ADR_Fecha_Inauguracion__c',type:'date',editable:false},
            {label:'Account',fieldName:'ADR_Account__c',type:'text',editable:false}
        ]);
        helper.TiendaDataHelper(component);
	},
})
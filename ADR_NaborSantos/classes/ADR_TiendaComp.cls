public class ADR_TiendaComp {
	@AuraEnabled
    public static List<ADR_Tienda__c> lstTiendasApex(){        
        return [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inaguracion__c FROM ADR_Tienda__c ORDER BY CreatedDate DESC LIMIT 5];
    }
}
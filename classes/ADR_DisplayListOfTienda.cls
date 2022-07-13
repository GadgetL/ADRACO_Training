public class ADR_DisplayListOfTienda {
	@AuraEnabled
    public static List<ADR_Tienda__c> fetchTiendaRecords(){
        return[SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inaguracion__c, ADR_Account__c FROM ADR_Tienda__c order By createdDate ASC LIMIT 5];
    }
}
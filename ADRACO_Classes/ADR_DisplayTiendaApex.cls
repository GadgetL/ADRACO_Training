public class ADR_DisplayTiendaApex {

    @AuraEnabled
    public static List<ADR_Tienda__c> fetchTiendaRecords() {
        return [SELECT Name, ADR_Fecha_Inauguracion__c, ADR_Type__c, CreatedDate FROM ADR_Tienda__c ORDER BY CreatedDate ASC LIMIT 5];
    }
}
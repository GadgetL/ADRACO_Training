public class ADR_DisplayStore{
	@AuraEnabled
    public static List<ADR_Tienda__c> displayLstStore(){
        return [SELECT Id, Name, ADR_Type__c, ADR_Fecha_Inaguracion__c, ADR_Account__c FROM ADR_Tienda__c  Order By CreatedDate ASC LIMIT 5];
    } 
}
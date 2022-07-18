public class ADR_TiendaEdit {
	@AuraEnabled
    public static List<ADR_Tienda__c> getLstTiendas(){
        return [SELECT Id, Name, CreatedDate, ADR_Type__c FROM ADR_Tienda__c order BY CreatedDate DESC LIMIT 10];
    }
    
     @AuraEnabled
    public static boolean updateTiendas(List<ADR_Tienda__c> lstTiendas){
        try{
            update lstTiendas;
            return TRUE;
        }catch(Exception e)
        {
            system.debug('EXCEPTION------>'+ e.getMessage());
            return FALSE;
        }
    }
}
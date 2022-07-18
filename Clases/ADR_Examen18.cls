public class ADR_Examen18 {
	@AuraEnabled
    public static list<ADR_Tienda__c> getListTienda(){
        return[Select Id,ADR_Fecha_Inaguracion__c,Name,ADR_Type__c FROM ADR_Tienda__c ORDER BY CreatedDate DESC LIMIT 5];
    }
    
    @AuraEnabled
    public static list<Account> getListAccount(){
        return[Select Id,Name,Phone,Website,Fax FROM Account ORDER BY CreatedDate DESC LIMIT 10];
    }
    @AuraEnabled
     public static boolean updateAccount(list<aCCOUNT> lstAccount){
         try{
             UPDATE lstAccount;
             return true;
         }catch(Exception e)
         {
             system.debug('Exception-->'+e.getMessage());
             return false;
         }
    }
}
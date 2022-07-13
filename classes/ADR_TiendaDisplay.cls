public class ADR_TiendaDisplay {
    @AuraEnabled
    public static List<ADR_Tienda__c> displayTienda(){
        system.debug('Ejecutando metodo');
        return [Select id,Name,ADR_Type__c,Fecha_inauguracion__c from ADR_Tienda__c Order By CreatedDate DESC Limit 5];
        
    }
    @AuraEnabled
    public static list<Account> getLstAccount(){
        return [Select id,Name,Phone,Website,AccountNumber from Account Order By CreatedDate DESC Limit 10];
    }
    @AuraEnabled
    public static boolean updateAccount(list<Account> lstAccount){
        try{
            update lstAccount;
            return true;
        }catch(Exception e){
            system.debug('Exception--->' + e.getMessage());
            return false;
        }
    }

}
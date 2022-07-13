public class ADR_DisplayListOfAccount {
	@AuraEnabled
    public static List<Account> fetchAccountRecords(){
        system.debug('Ejecutando metodo');
        return [Select Name,Rating,Phone,Website,Description from Account WHERE Name ='GenePoint' Order By createdDate ASC LIMIT 10];
        
    }
    @AuraEnabled
    public static List<Account> fetchAccountRecord(string strAccountName){
        system.debug('Ejecutando el metodo');
        return [Select Name,Rating,Phone,Website,Description from Account WHERE Name =:strAccountName Order By createdDate ASC LIMIT 10];
    }
    
}
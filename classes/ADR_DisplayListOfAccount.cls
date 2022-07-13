public class ADR_DisplayListOfAccount {
    @AuraEnabled
    public static List<Account> fetchAccountRecords(){
        system.debug('Ejecuntando método fetchAccountRecords -controlador apex-');
        return [SELECT Name, Rating, Phone, Website, Description FROM Account ORDER BY CreatedDate ASC LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Account> fetchAccountRecord(string strAccountName){
    	system.debug('Ejecuntando método fetchAccountRecords -controlador apex-');
        return [SELECT Name, Rating, Phone, Website, Description FROM Account WHERE Name=:strAccountName ORDER BY CreatedDate ASC LIMIT 1];
    }    
}
public class ADR_DisplayListOfAccount {
    
    
    @AuraEnabled
    public static List<Account> fetchAccountRecords(){
        System.debug('Ejecutando metodo fetchAccountRecords');
        return [SELECT Name, Rating, Phone, Website, Description FROM Account ORDER BY createdDate ASC LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Account> fetchAccountRecord(String strAccountName){
        
        return [SELECT Name, Rating, Phone, Website, Description FROM Account WHERE Name =: strAccountName ORDER BY createdDate ASC LIMIT 10];
    }
}
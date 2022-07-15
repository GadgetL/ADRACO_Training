public class ADR_DisplayListOfAccount {
    
    @AuraEnabled
    public static List<Account> fetchAccountRecords() {
        return [SELECT Name, Rating, Phone, Website, Description FROM Account ORDER BY createdDate ASC LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Account> fetchAccountRecordByName(String strName) {
        return [SELECT Name, Rating, Phone, Website, Description FROM Account WHERE Name=:strName LIMIT 1];
    }
}
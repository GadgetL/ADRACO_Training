public class ADR_DisplayListofAccount {
    
    @AuraEnabled
    public static List<Account> fetchAccountRecords(){
        system.debug('Ejecutando Metodo');
        return [SELECT Name,Rating, Phone, Website, Description FROM Account Order By createdDate ASC LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Account> fetchAccountRecords(string strAccountName){
        system.debug('Ejecutando Metodo');
        return [SELECT Name,Rating, Phone, Website, Description FROM Account WHERE Name=:strAccountName Order By createdDate ASC LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Contact> fetchContactRecords(string strContactLastName, string strContactEmail){
        system.debug('Ejecutando Metodo');
        return [SELECT Id,LastName,Email FROM Contact WHERE LastName=:strContactLastName or Email=:strContactEmail  LIMIT 2];
    }
}
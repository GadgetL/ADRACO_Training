public class ADR_DisplayListOfAccount {
    @AuraEnabled
    public static List<Account> fetchAccountRecords(){
        System.debug('ejecutando metodo');
        return[SELECT Name, Rating,Phone,Website,Description from Account order By createdDate ASC LIMIT 10];
    }
    @AuraEnabled
    public static List<Contact> fetchContactRecords(){
        System.debug('ejecutando metodo');
        return[SELECT Name,Phone,Email,Department,Description from Contact order By createdDate ASC LIMIT 10];
    }
    @AuraEnabled
    public static List<Contact> fetchAccountRecord(String strAccountName){
        System.debug('ejecutando metodo');
        return[SELECT Name,Phone,Email,Department,Description from Contact WHERE Name=:strAccountName order By createdDate ASC LIMIT 1];
    }
        @AuraEnabled
    public static List<Contact> fetchContactRecord(String strContactName, String strContactPhone){
        System.debug('ejecutando metodo');
        return[SELECT Id, Name, Phone FROM Contact where name= :strContactName or Phone=:strContactPhone LIMIT 2];
    }
}
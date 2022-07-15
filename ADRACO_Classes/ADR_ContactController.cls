public class ADR_ContactController {
    
    @AuraEnabled
    public static List<Contact> fetchContactRecords() {
        return [SELECT FirstName, LastName, AccountId, Email, Phone FROM Contact ORDER BY CreatedDate ASC LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Contact> fetchContactRecordsHomework(String strLastName, String strEmail) {
        return [SELECT FirstName, LastName, AccountId, Email, Phone FROM Contact WHERE LastName=:strLastName OR Email=:strEmail LIMIT 2];
    }
}
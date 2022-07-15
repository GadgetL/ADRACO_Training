public class ADR_ContactEditApex {
    
    @AuraEnabled
    public static List<Contact> getLstContact() {
        return [SELECT Id, FirstName, LastName, Email, Phone FROM Contact ORDER BY CreatedDate LIMIT 10];
    }
    
    @AuraEnabled
    public static Boolean updateContact(List<Contact> lstContact) {
        try {
            UPDATE lstContact;
            return true;
        }
        catch(Exception e) {
            system.debug('Exception: ' + e.getMessage());
            return false;
        }
    }
}
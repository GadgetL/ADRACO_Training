public class ADR_CreateAndDisplayContactInformation {
    @AuraEnabled
    public static void createContact(Contact objContact) {
        try {
            INSERT objContact;
        }
        catch(DmlException e) {
            system.debug('Exception: ' + e.getMessage());
        }
    }
    
    @AuraEnabled
    public static List<Contact> displayListContacts() {
        return [SELECT FirstName, LastName, Phone, Email FROM Contact ORDER BY CreatedDate DESC LIMIT 15];
    }
}
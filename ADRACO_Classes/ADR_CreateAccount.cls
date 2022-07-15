public class ADR_CreateAccount {

    @AuraEnabled
    public static void createAccount(Account objAccount) {
        try {
            INSERT objAccount;
        }
        catch(DmlException e) {
            system.debug('Exception: ' + e.getMessage());
        }
    }
    
    @AuraEnabled
    public static List<Account> displayAccount() {
        return [SELECT Name, Phone, Website FROM Account ORDER BY CreatedDate ASC LIMIT 5];
    }
}
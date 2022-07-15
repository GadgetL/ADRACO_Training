public class ADR_AccountEditApex {
    
	@AuraEnabled
    public static List<Account> getLstAccount() {
        return [SELECT Id, Name, Phone, Website FROM Account ORDER BY CreatedDate LIMIT 10];
    }
    
    @AuraEnabled
    public static Boolean updateAccount(List<Account> lstAccount) {
        try {
            UPDATE lstAccount;
            return true;
        }
        catch(Exception e) {
            system.debug('Exception: ' + e.getMessage());
            return false;
        }
    }
}
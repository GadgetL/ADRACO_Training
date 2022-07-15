public class ADR_ContactTriggerHandler {
    public static void updateAccountName(List<Contact> lstContact) {
        List<Account> lstAccount = new List<Account>();
        
        for(Contact objContact : lstContact) {
            Account objAccount = [SELECT Name FROM Account WHERE Id = :objContact.AccountId];
            objAccount.Name = objContact.LastName;
            lstAccount.add(objAccount);
        }
        
        UPDATE lstAccount;
    }
}
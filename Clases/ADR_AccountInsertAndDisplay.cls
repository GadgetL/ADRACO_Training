public class ADR_AccountInsertAndDisplay {

    @AuraEnabled
    public static void createNewAccount(Account objAccount){
            insert objAccount;
        try{

        }
        catch(DmlException e) {
   			System.debug('The following exception has occurred: ' + e.getMessage());
		}
    }
    
    @AuraEnabled
    public static list<Account> displayAccounts(){
        return[Select Id,Name,Phone,Website,AccountNumber from Account Order By CreatedDate DESC limit 10];
    }
}
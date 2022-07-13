public class ADR_AccountInsertAndDisplay {
	@AuraEnabled
    public static void createNewAccount(Account objAccount){

        try{
            Insert objAccount;
        } catch(DmlException e){
           // System.debug('The follwing exception has ocurred: ' + e.getMessage());
        }
    }
    @AuraEnabled
    public static List<Account> displayAccounts(){
        return [Select id,Name,Phone,Website,AccountNumber from Account Order By CreatedDate DESC Limit 10];
    }
}
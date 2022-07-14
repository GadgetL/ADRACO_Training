public class ADR_AccountInsertAndDisplay {
	@AuraEnabled
    public static void createAccount(Account objAccount){
        System.debug('-->' + objAccount);
        try{
        	Insert objAccount;    
        } catch(DmlException e){
            System.debug('The following exception has ocurred:' + e.getMessage());
        } 
    }
    
    @AuraEnabled
    public static List<Account> displayAccount(){
        return[SELECT Id, Name, Phone, Website, AccountNumber FROM Account ORDER BY CreatedDate DESC LIMIT 10];
    }
}
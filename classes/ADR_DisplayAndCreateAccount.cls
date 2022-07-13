public class ADR_DisplayAndCreateAccount {
	@AuraEnabled
    public static List<Account> displayAccountList(){
        return [SELECT Id, Name, Phone, Website FROM Account ORDER BY CreatedDate DESC LIMIT  10];
    }
	@AuraEnabled
    public static void updateAccounts(list<Account> lstAccounts){        
        try{
            UPDATE lstAccounts;            
        }catch(Exception e) {
    		System.debug('The following exception has occurred: ' + e.getMessage());
		}
    }   
}
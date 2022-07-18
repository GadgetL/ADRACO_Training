public class ADR_AccountEdit {
	@AuraEnabled
    public static List<Account> getLstAccounts(){
        return [SELECT Id,Name,Phone,AccountNumber,Site FROM Account order BY CreatedDate DESC LIMIT 10];
    }
    
     @AuraEnabled
    public static boolean updateAccount(List<Account> lstAccount){
        try{
            update lstAccount;
            return TRUE;
        }catch(Exception e)
        {
            system.debug('EXCEPTION------>'+ e.getMessage());
            return FALSE;
        }
    }
}
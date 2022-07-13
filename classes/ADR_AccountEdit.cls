public class ADR_AccountEdit {
	@AuraEnabled
    public static List<Account> getLstAccounts(){
        return[SELECT Id,Name,Type,Phone,Website from Account Order By CreatedDate DESC LIMIT 10];
    }
    @AuraEnabled
    public static boolean updateAccount(list<Account> lstAccounts){
        try{
            UPDATE lstAccounts;
            return true;
        }catch(Exception e){
            System.debug('Exception---->'+e.getMessage());
        	return false;
        }
    }
}
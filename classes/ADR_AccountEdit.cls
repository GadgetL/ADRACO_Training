public class ADR_AccountEdit {
	 @AuraEnabled
	public static list<Account> getLstAccount(){
        return [SELECT Name, Phone, Website, Description, Id FROM Account ORDER By CreatedDate DESC LIMIT 10];
    }
    
    @AuraEnabled
	public static boolean updateAccount(list<Account> lstAccounts){
        try{
            UPDATE lstAccounts;
            return true;
        }catch(Exception e){
            System.debug('Exception--->' + e.getMessage());
            return false;
        }
    }
}
public class ADR_AccountEdit {
	@AuraEnabled
    public static List<Account> getLstAccount(){
        return[SELECT Id, Name, Phone, Website FROM Account ORDER BY CreatedDate DESC LIMIT 10];
    }
    
    @AuraEnabled
    public static void updateAccount(List<Account> lstAccount){
        try{
            UPDATE lstAccount;
        }catch(Exception e){
            System.debug('Exception-->'+e.getMessage());
        }
    }
}
public class ADR_AccountInsertAndDisplay {
    
    @AuraEnabled
    public static void creatAccount(Account objAccount){
        system.debug('obj: ' + objAccount);
        
        INSERT objAccount;
            system.debug('obj: ' + objAccount);
        /*
        try{
            
            
        }catch(DmlException e) {
                
   	 			System.debug('The following exception has occurred: ' + e.getMessage());
				}*/
    }
    
     @AuraEnabled
    public static List<Account> displayAccounts(){
        return [SELECT id,Name,Phone,Website,AccountNumber FROM Account order BY CreatedDate DESC LIMIT 10];
        
    }
}
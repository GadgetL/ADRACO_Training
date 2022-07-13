public class ADR_AccountInsertAndDisplay {
    @AuraEnabled
    public static void createAccount(Account objAccount){
        try{INSERT objAccount;
             
           } catch(DmlException e) {
    			System.debug('The following exception has occurred: ' + e.getMessage());
           }	
            
    }
    @AuraEnabled
    public static List<Account> displayAccounts(){
        return[SELECT Id,Name,Phone,Website,AccountNumber from Account Order By CreatedDate ASC LIMIT 10];
    }
    
}
public class ADR_AccountInsertAndDisplay {
    @AuraEnabled
    public static void createAccount(Account objAccount){
        System.debug('Creando cuenta');
        try{
            INSERT objAccount;  
            System.debug('Insertando cuenta');
        }catch(DmlException e) {
    		System.debug('The following exception has occurred: ' + e.getMessage());
		}
    }
    @AuraEnabled
    public static List<Account> displayAccount(){
        return [SELECT Id, Name, Phone, Website, AccountNumber FROM Account ORDER BY CreatedDate DESC LIMIT  10];
    }
}
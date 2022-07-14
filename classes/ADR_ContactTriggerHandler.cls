public class ADR_ContactTriggerHandler {
	public static void updateAccountRelated(List <Contact> lstContact){
		
        System.debug('Contact List:' + lstContact);
        
        Set <Id> setIdAccount = new Set <Id>();
        
        for (Contact objContact : lstContact){
            setIdAccount.add(objContact.AccountId);
        }
        updateAccName(setIdAccount);
    }
    
    public static void updateAccName(set<Id> setIdAcc){
        
        Account objAccount = [SELECT Id, Name FROM Account WHERE ID =: setIdAcc];
        Contact objContact = [SELECT Id, Name FROM Contact WHERE AccountId =: setIdAcc];
       
        System.debug('Account Name Before:' + objAccount.Name);
        objAccount.Name = objContact.Name;
        System.debug('Account Name After:' + objAccount.Name);
        Update objAccount;
                
        System.debug('Object' + objAccount);
    }
  
    
}
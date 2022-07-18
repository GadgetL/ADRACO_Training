public class ADR_ContactTriggerHandler {
	public static void createAccountRelated(List<Contact> lstContact){             
        System.debug('List Contact--> ' + lstContact);
        set<Id> setId = new set<Id>();
        for(Contact objContact : lstContact){
         	setId.add(objContact.Id);   
        }
        setAccountValue(setId);
    }
    
    public static void setAccountValue(set<Id> setId){        
        System.debug('Insert Account Trigger-->');
        System.debug('Update Account for Contact Trigger-->');
        List<Account> lstAccount = new List<Account>();
        for(Id idContact : setId){
            Account objAccount = [SELECT Id, Name, Phone FROM Account ORDER BY CreatedDate DESC LIMIT 1];
            Contact objContact = [SELECT Id, Name, AccountId  FROM Contact WHERE Id=:idContact LIMIT 1];
            objAccount.Name = objContact.Name;
            lstAccount.add(objAccount);
        }
        UPDATE lstAccount;
        System.debug('After Trigger-> ' + lstAccount);
    }
}
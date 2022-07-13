public class ADR_AccountTriggerHandler {
    public static void createContactRelated(List<Account> lstAccount){
        System.debug('lstAccount' + lstAccount);
        Set<id> setId = new set<id>();
        for(Account objAccount : lstAccount){
            setId.add(objAccount.id);
        }
        setContactValue(setId);
        
        
    }
    public static void setContactValue(set<id> setId){
        List<Contact> lstContact = new List<Contact>();
        for(id idAcc: setId){
            Contact objCont = new Contact();
            objCont.AccountId= idAcc;
            objCont.FirstName = 'Aaron';
        	objCont.LastName = 'Perez';
        	objCont.Email = 'aaron@gmail.com';
            lstContact.add(objCont);
        }
        
        
       INSERT lstContact;
      System.debug('List Contact'+ lstContact);
        
    }
}
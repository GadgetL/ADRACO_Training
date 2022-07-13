public class ADR_AccountTriggerHandler {
    public static void CreateContactRelated(List<Account> lstAccount){
        System.debug('List Account: '+lstAccount);
        Set<Id> setIdAcc= new set<Id>();
        for(Account objAccount: lstAccount){
           setIdAcc.add(objAccount.Id);
            
        }
        SetContactValue(setIdAcc);
    }
    public static void  SetContactValue(Set<Id> setIdAccount){
        List<Contact> lstContact= new List<Contact>();
        for(Id IdAcc: setIdAccount){
            Contact objContact=new Contact();
            objContact.AccountId=IdAcc;
            objContact.FirstName ='Contact';
       		objContact.LastName='Insert Trigger';
        	objContact.Email ='ContactTrigger@adr.com';
            lstContact.add(objContact);
        }
        INSERT lstContact;
        System.debug('List Contact: '+lstContact);         
    }
}
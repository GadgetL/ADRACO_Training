public class ADR_ContactEdit {
	@AuraEnabled
    public static List<Contact> getLstContacts(){
        return [SELECT Id,FirstName,LastName,Phone,Description FROM Contact order BY CreatedDate DESC LIMIT 10];
    }
    
     @AuraEnabled
    public static boolean updateContact(List<Contact> lstContacts){
        try{
            update lstContacts;
            return TRUE;
        }catch(Exception e)
        {
            system.debug('EXCEPTION------>'+ e.getMessage());
            return FALSE;
        }
    }
}
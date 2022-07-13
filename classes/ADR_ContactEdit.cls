public class ADR_ContactEdit {
 	@AuraEnabled
    public static list<Contact> getLstContact(){
        return [Select Id,FirstName,LastName,Title,Phone FROM Contact ORDER BY CreatedDate DESC LIMIT 10];
    }
    @AuraEnabled
    public static boolean updateContact(list<Contact> lstContact){
        try{
            update lstContact;
            return true;
        }catch(Exception e){
            system.debug('Exception--->' + e.getMessage());
            return false;
        }
    }
}
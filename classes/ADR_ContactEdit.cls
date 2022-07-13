public class ADR_ContactEdit {
    @AuraEnabled
    public static List<Contact> getLstContacts(){
        return[SELECT Id,FirstName,LastName,Phone,Email from Contact Order By CreatedDate DESC LIMIT 10];
    }
    @AuraEnabled
    public static boolean updateContact(list<Contact> lstContacts){
        try{
            UPDATE lstContacts;
            return true;
        }catch(Exception e){
            System.debug('Exception---->'+e.getMessage());
        	return false;
        }
    }
}
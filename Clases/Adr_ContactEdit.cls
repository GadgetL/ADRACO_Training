public class Adr_ContactEdit {
  	@AuraEnabled
    public static list<Contact> getListContact(){
        return[Select Id,FirstName,LastName,Phone,Email,Birthdate FROM Contact ORDER BY CreatedDate DESC LIMIT 10];
    }
    @AuraEnabled
     public static boolean updateContact(list<Contact> lstContact){
         try{
             UPDATE lstContact;
             return true;
         }catch(Exception e)
         {
             system.debug('Exception-->'+e.getMessage());
             return false;
         }
    }
}
public class ADR_ContactEdit {

    @AuraEnabled
    public static List<Contact> getLstContacts(){
        return[SELECT Id, LastName, Email, Phone, Description FROM Contact ORDER BY CreatedDate DESC LIMIT 10];
    }
    
    @AuraEnabled
    public static void updateContacts(List<Contact> lstContacts){
        try{
            UPDATE lstContacts;
        }catch(Exception e){
            System.debug('Exception-->'+e.getMessage());
        }
    }
}
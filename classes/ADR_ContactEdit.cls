public class ADR_ContactEdit {
	@AuraEnabled
    public static list<Contact> getLstContacts(){
        return [SELECT Id, LastName, Name, Phone, Email, Birthdate, Department FROM Contact ORDER BY CreatedDate DESC LIMIT 10];
    }
    
    @AuraEnabled
    public static boolean updateContacts(list<Contact> lstContacts){
        try{
            UPDATE lstContacts;
            return true;
        }catch(Exception e){
            System.debug('Exception --> ' + e.getMessage());
            return false;
        }        
    }
}
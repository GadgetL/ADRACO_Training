public class ADR_ContactEdit {
	@AuraEnabled
    public static List<Contact> getLstContact(){
        RETURN [SELECT Id, LastName,FirstName, Phone, Email, Department, Languages__c FROM Contact ORDER BY CreatedDate DESC LIMIT 10];
        
    }
    
    @AuraEnabled
    public static boolean updateContact(list<Contact> lstContact){
        try{
            UPDATE lstContact;
            return true;
        }catch(Exception e){
            System.debug('Error' + e.getMessage());
            return false;
        }
    }
}
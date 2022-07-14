public class ADR_ContactInsertAndDisplay {
    
    @AuraEnabled
    public static void createContact(Contact objContact){
        System.debug('-->' + objContact);
        try{
        	Insert objContact;    
        } catch(DmlException e){
            System.debug('The following exception has ocurred:' + e.getMessage());
        } 
    }

    @AuraEnabled
    public static List<Contact> displayContact(){
        return [SELECT Id, Lastname, Firstname, Department, Email FROM Contact ORDER BY CreatedDate DESC LIMIT 15];
    }

}
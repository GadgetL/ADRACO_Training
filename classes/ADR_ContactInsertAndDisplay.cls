public class ADR_ContactInsertAndDisplay {
		
    @AuraEnabled
    public static void createContact(Contact objContact){
        system.debug('obj: ' + objContact);       
        INSERT objContact;
        system.debug('obj: ' + objContact);
   
    }
    
    @AuraEnabled
    public static List<Contact> displayContact(){
     	return [SELECT id,Name,Phone,LastName,Title FROM Contact order BY CreatedDate DESC LIMIT 15];
        
    }
    
    
}
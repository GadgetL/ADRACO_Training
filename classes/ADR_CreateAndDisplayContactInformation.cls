public class ADR_CreateAndDisplayContactInformation {
    @AuraEnabled
    public static void createContact(Contact objContact){
        try{INSERT objContact;
             
           } catch(DmlException e) {
    			System.debug('The following exception has occurred: ' + e.getMessage());
           }	
       
            
    }
    @AuraEnabled
    public static List<Contact> displayContacts(){
        return[SELECT Id,FirstName,LastName,Phone,Email from Contact Order By CreatedDate DESC LIMIT 15];
    }
    
}
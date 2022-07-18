public class ADR_CreateAndDisplayContactInformation {
	@AuraEnabled
    public static List<Contact> displayContactList(){
        return [SELECT Id, Name, FirstName, LastName, Phone, Email FROM Contact ORDER BY CreatedDate DESC LIMIT  16];
    }
	@AuraEnabled
    public static void createNewContact(Contact objContact){
        System.debug('Creando Contacto');
        try{
            INSERT objContact;  
            System.debug('Insertando Contacto');
        }catch(Exception e) {
    		System.debug('The following exception has occurred: ' + e.getMessage());
		}
    }    
}
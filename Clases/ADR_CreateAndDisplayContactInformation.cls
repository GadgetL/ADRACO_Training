public class ADR_CreateAndDisplayContactInformation {


    @AuraEnabled
    public static void createNewContact(Contact objContact){
        try{
			insert objContact;
        }
        catch(DmlException e) {
   			System.debug('The following exception has occurred: ' + e.getMessage());
		}
    }
    
    @AuraEnabled
    public static list<Contact> displayContact(){
        return[SELECT Id, Name, LastName, Phone, Email FROM Contact Order By CreatedDate DESC limit 10];
    }
}
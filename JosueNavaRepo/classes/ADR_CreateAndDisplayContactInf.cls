/*Metodos para crear un contacto y listar una lista de contactos
para los aura components
*/
public class ADR_CreateAndDisplayContactInf {

    @AuraEnabled
    public static void createContact(Contact objContact){
        try{
        	Insert objContact; 
        }catch(DmlException e){
            System.debug('The following exception has occurred: '+e.getMessage());
        }
    }  
    
     @AuraEnabled
    public static List<Contact> displayContact(){
        return [SELECT Id, Name, Email, Phone FROM Contact Order By CreatedDate DESC LIMIT 15];
    }
}
/*************************************************************************************** 
* Name: ADR_CreateAndDisplayContactInformation
* Test: ADR_CreateAndDisplayContactInformation_Test
* Author: Valentín López Morales 
* Description: Required information to insert and display Contacts in Aura Component
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Conection with Contact
*/ 
public class ADR_CreateAndDisplayContactInformation {
    
    /*
    * Method Name: createContact
    * Description: Create a Contact record
    * Return Type: void
    * Parameters: Contact objContact
    */
    @AuraEnabled
    public static void createContact(Contact objContact){
        system.debug('objContact: '+objContact);
        try{
            system.debug('objContact: '+objContact);
            INSERT objContact;
        }catch(DmlException e){
            system.debug('The following exception has ocurred: '+e.getMessage());
        }
    }
    
    /*
    * Method Name: displayContacts
    * Description: displays a list of Contact
    * Return Type: void
    * Parameters: 
    */
    @AuraEnabled
    public static List<Contact> displayContacts(){
        return [SELECT Id, Name, Title, Phone, Email FROM Contact ORDER BY CreatedDate DESC LIMIT 15];
    }
}
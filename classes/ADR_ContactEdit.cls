/*************************************************************************************** 
* Name: ADR_ContactEdit
* Test: ADR_ContactEdit_Test
* Author: Valentín López Morales 
* Description: Required information to edit and display Accounts in Aura Component
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Conection with Contact
*/ 
public class ADR_ContactEdit {
    
    /*
    * Method Name: getLstContacts
    * Description: gets a list of ten Contacts
    * Return Type: List<Contact>
    * Parameters: 
    */
    @AuraEnabled//This tag is important to use the method in Aura Component
    public static list<Contact> getLstContacts(){
        return[SELECT Id, FirstName, LastName, Title, Phone, Email FROM Contact ORDER BY CreatedDate DESC LIMIT 10];
    }
    
    /*
    * Method Name: updateContact
    * Description: Return true if the Contact list was successfully update and false otherwise
    * Return Type: Boolean
    * Parameters: List<Contact> lstContacts
    */
    @AuraEnabled//This tag is important to use the method in Aura Component
    public static boolean updateContact(list<Contact> lstContacts){
        try{
            UPDATE lstContacts;
            return true;
        }catch(Exception e){
            system.debug('Exception--->'+e.getMessage());
            return false;
        }
    }
}
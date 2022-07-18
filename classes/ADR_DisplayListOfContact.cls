/*************************************************************************************** 
* Name: ADR_DisplayListOfContact
* Test: ADR_DisplayListOfContact_Test
* Author: Valentín López Morales 
* Description: Required information to display List of Contacts in Aura Component
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Conection with Contacts
*/ 
public class ADR_DisplayListOfContact {
    
    /*
    * Method Name: listContactRecords
    * Description: Displays a list of Contacts
    * Return Type: List<Contact>
    * Parameters: 
    */
    @AuraEnabled
    public static List<Contact> listContactRecords(){
        return [SELECT Name, Phone, Email, Title, Department, LeadSource FROM Contact ORDER BY createdDate ASC LIMIT 10];
    }
    
    /*
    * Method Name: listContactNameEmail
    * Description: Displays a specific list of Contacts
    * Return Type: List<Contact>
    * Parameters: string strLastName, string strEmail
    */
    @AuraEnabled
    public static List<Contact> listContactNameEmail(string strLastName, string strEmail){
        return [SELECT Name, Phone, Email, Title, Department, LeadSource FROM Contact WHERE (LastName=:strLastName or Email=:strEmail) ORDER BY createdDate ASC LIMIT 2];
    }

}
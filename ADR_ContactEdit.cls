/************************************************************************************************************
 * Name: ADR_ContactEdit
 * Class test: ADR_ContactEdit_Test
 * Autor: Francisco Reyes
 * Description: Update the recods for standard Contact object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation and updating of records
*/
public class ADR_ContactEdit {
    @AuraEnabled
    public static list<Contact> getLstContacts(){
        return [SELECT Id, FirstName, LastName, Email FROM Contact Order BY CreatedDate DESC LIMIT 10];
    }
    @AuraEnabled
    public static boolean updateContact(list<Contact> lstContacts){
        system.debug('---->'+lstContacts);
        try{
            UPDATE lstContacts;
            return true;
        }catch(Exception e){
            system.debug('Exception----->'+ e.getMessage());
            return false;
        }
    }

}
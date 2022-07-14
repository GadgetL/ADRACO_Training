/************************************************************************************************************
 * Name: ADR_AccountEdit
 * Class test: ADR_AccountEdit_Test
 * Autor: Francisco Reyes
 * Description: Update the recods for standard account object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation and updating of records
*/
public class ADR_AccountEdit {
    @AuraEnabled
    public static list<Account> getLstAccounts(){
        return [SELECT id, Name, Type, Phone FROM Account Order BY CreatedDate DESC LIMIT 10];
    }
    @AuraEnabled
    public static boolean updateAccount(list<Account> lstAccounts){
        //system.debug('---->'+lstAccounts);
        try{
            UPDATE lstAccounts;
            return true;
        }catch(Exception e){
            system.debug('Exception----->'+ e.getMessage());
            return false;
        }
    }

}
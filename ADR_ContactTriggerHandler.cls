/************************************************************************************************************
 * Name: ADR_AccountTriggerHandler
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Update the Account Name by a Contact Name that is related.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Update Account Name by Contact Name.
*/
public class ADR_ContactTriggerHandler {
    public static void updateAccountRelated(list<Contact> lstContact){
        set<id> setIdAcc = new set<id>();
        Contact objContact = new Contact();
        for(Contact objCont : lstContact){
            setIdAcc.add(objCont.AccountId);
            objContact = objCont;
        }
        Account objAcco = [SELECT id, Name FROM Account WHERE Id IN: setIdAcc LIMIT 1];
        System.debug('Accoun name  '+objAcco.Name);
        setContactValue(objAcco, objContact);
    }
    public static void setContactValue(Account objAcco, Contact objContact){
        objAcco.Name = objContact.FirstName +' '+ objContact.LastName;
        update objAcco;
        system.debug('Account' +objAcco);
    }

}
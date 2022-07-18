/*************************************************************************************** 
* Name: ADR_TestDataFactory
* Test: 
* Author: Valentín López Morales 
* Description: Required information to optimize tests
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22 		  | v0.1 			| Connection with Tests
*/
@isTest
public class ADR_TestDataFactory {
    
    /*
    * Method Name: createAccount
    * Description: Create an Account record
    * Return Type: Account
    * Parameters: string strName
    */
    public static Account createAccount(string strName){
        Account objAccount = new Account();
        objAccount.Name = strName;
        return objAccount;
    }
    
    /*
    * Method Name: createAccountList
    * Description: Create an Account list records
    * Return Type: List<Account>
    * Parameters: string strName, integer intcont
    */
    public static List<Account> createAccountList(string strName, integer intcont){
        List<Account> lstAccount = new List<Account>();
        Account objAccount = new Account();
        for(integer x=0; x<intCont; x++){
            lstAccount.add(createAccount(strName+x));
        }
        
        return lstAccount;
    }
    
    /*
    * Method Name: createTienda
    * Description: Create a Tienda record
    * Return Type: ADR_Tienda__c
    * Parameters: string strNameTienda, string strtypeTienda, Date dtFechaTienda
    */
    public static ADR_Tienda__c createTienda(string strNameTienda, string strtypeTienda, Date dtFechaTienda){
        ADR_Tienda__c objTienda = new ADR_Tienda__c();
        objTienda.Name = strNameTienda;
        objTienda.ADR_Type__c = strTypeTienda;
        objTienda.ADR_Fecha_Inauguracion__c = dtFechaTienda;
        return objTienda;
    }
    
    /*
    * Method Name: createContatc
    * Description: Create a Contact record
    * Return Type: Contact
    * Parameters: string strFirstName, string strLastName, string strEmail
    */
    public static Contact createContatc(string strFirstName, string strLastName, string strEmail){
        Contact objContact = new Contact();
        objContact.FirstName = strFirstName;
        objContact.LastName = strLastName;
        objContact.Email = strEmail;
        return objContact;
    }
    
    /*
    * Method Name: createOpportunity
    * Description: Create an Opportunity record
    * Return Type: Opportunity
    * Parameters: string strName, string strStage, date dtClose
    */
    public static Opportunity createOpportunity(string strName, string strStage, date dtClose){
        Opportunity objOpp = new Opportunity();
        objOpp.Name = strName;
        objOpp.StageName = strStage;
        objOpp.CloseDate = dtClose;
        return objOpp;
    }

}
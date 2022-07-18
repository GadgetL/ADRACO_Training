/*************************************************************************************** 
* Name: ADR_DisplayListOfAccount
* Test: ADR_DisplayListOfAccount_Test
* Author: Valentín López Morales 
* Description: Required information to insert and display Account in Aura Component
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Conection with Account
*/ 
public class ADR_DisplayListOfAccount {
    
    /*
    * Method Name: fetchAccountRecords
    * Description: Displays a list of Accounts
    * Return Type: List<Account>
    * Parameters: 
    */
    @AuraEnabled //Con esto se habilita para poder usarlo en Aura
    public static List<Account> fetchAccountRecords(){
        system.debug('Ejecutando método fetchAccountRecords');
        return [SELECT Name, Rating, Phone, Website, Description FROM Account ORDER BY createdDate ASC LIMIT 10];
    }
    
	/*
    * Method Name: fetchAccountRecord
    * Description: Displays a specific Account
    * Return Type: List<Account>
    * Parameters: string strAccountName
    */
    @AuraEnabled //Con esto se habilita para poder usarlo en Aura
    public static List<Account> fetchAccountRecord(string strAccountName){
        system.debug('Ejecutando método fetchAccountRecords');
        return [SELECT Name, Rating, Phone, Website, Description FROM Account WHERE Name=:strAccountName ORDER BY createdDate ASC LIMIT 1];
    }

}
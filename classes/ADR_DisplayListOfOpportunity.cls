/*************************************************************************************** 
* Name: ADR_DisplayListOfOpportunity
* Test: ADR_DisplayListOfOpportunity_Test
* Author: Valentín López Morales 
* Description: Required information to display List of Opportunities in Aura Component
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Conection with Opportunity
*/ 
public class ADR_DisplayListOfOpportunity {
    
    /*
    * Method Name: lstOppAccount
    * Description: Displays a list of opportunities
    * Return Type: List<Opportunity>
    * Parameters: 
    */
    @AuraEnabled
    public static List<Opportunity> lstOppAccount(){
        return [SELECT Name, Description, Type, StageName, Account.Name, Account.Site, Account.Phone FROM Opportunity LIMIT 10];
    }
    
    /*
    * Method Name: lstOppByName
    * Description: Displays a specific list of Oportunities
    * Return Type: List<Opportunity>
    * Parameters: string strAccountName
    */
    @AuraEnabled
    public static List<Opportunity> lstOppByName(string strAccountName){
        return [SELECT Name, Description, Type, StageName, Account.Name, Account.Site, Account.Phone FROM Opportunity WHERE Account.Name =: strAccountName LIMIT 5]; 
    }

}
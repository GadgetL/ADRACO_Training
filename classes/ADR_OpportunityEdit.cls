/*************************************************************************************** 
* Name: ADR_OpportunityEdit
* Test: ADR_OpportunityEdit_Test
* Author: Valentín López Morales 
* Description: The required information to edit and display Opportunities in Aura Component
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 14-07-22		  | v0.1 			| Conection with Opportunity
*/ 
public class ADR_OpportunityEdit {
    
    /*
    * Method Name: getLstOpportunities
    * Description: gets a list of ten Opportunities
    * Return Type: List<Opportunity>
    * Parameters: 
    */
    @AuraEnabled//This tag is important to use the method in Aura Component
    public static list<Opportunity> getLstOpportunities(){
        return[SELECT Id,Name,Amount,CloseDate FROM Opportunity ORDER BY CreatedDate DESC LIMIT 10];
    }
    
    /*
    * Method Name: updateOpportunity
    * Description: Return true if the Opportunities list was successfully update and false otherwise
    * Return Type: Boolean
    * Parameters: List<Opportunity> lstOpportunities
    */
    @AuraEnabled//This tag is important to use the method in Aura Component
    public static boolean updateOpportunity(list<Opportunity> lstOpportunities){
        try{
            UPDATE lstOpportunities;
            return true;
        }catch(Exception e){
            system.debug('Exception--->'+e.getMessage());
            return false;
        }
    }
}

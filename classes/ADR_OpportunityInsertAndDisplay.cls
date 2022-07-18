/*************************************************************************************** 
* Name: ADR_OpportunityInsertAndDisplay
* Test: ADR_OpportunityInsertAndDisplay_Test
* Author: Valentín López Morales 
* Description: The required information to insert and display Opportunities in Aura Component
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 13-07-22 		  | v0.1 			| Conection with Opportunity 
*/ 
public class ADR_OpportunityInsertAndDisplay {
    
    /*
    * Method Name: createOpportunity
    * Description: Insert object Opportunity
    * Return Type: void
    * Parameters: Opportunity objOpp
    */
    @AuraEnabled//This tag is important to use the method in Aura Component
    public static void createOpportunity(Opportunity objOpp){
        system.debug('objOpp: '+objOpp);
        try{
            system.debug('objOpp: '+objOpp);
            INSERT objOpp;
        }catch(DmlException e){
            system.debug('The following exception has ocurred: '+e.getMessage());
        }
    }
    
   /*
    * Method Name: displayOpportunity
    * Description: Displays a list of fiffteen Opportunities
    * Return Type: List<Opportunity>
    * Parameters: 
    */
    @AuraEnabled//This tag is important to use the method in Aura Component
    public static List<Opportunity> displayOpportunity(){
        return [SELECT Name, StageName, Amount, CloseDate, Type FROM Opportunity ORDER BY CreatedDate DESC LIMIT 15];
    }
}
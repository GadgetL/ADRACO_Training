/************************************************************************************************************
 * Name: ADR_OpportunityEdit
 * Class test: ADR_OpportunityEdit_Test
 * Autor: Francisco Reyes
 * Description: Update the recods for standard Opportunity object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation and updating of records
*/
public class ADR_OpportunityEdit {
    @AuraEnabled
    public static list<Opportunity> getLstOpportunities(){
        return [SELECT id, Name, Amount, CloseDate FROM Opportunity Order BY CreatedDate DESC LIMIT 10];
    }
    @AuraEnabled
    public static boolean updateOpportunity(list<Opportunity> lstOpportunities){
        system.debug('---->'+lstOpportunities);
        try{
            UPDATE lstOpportunities;
            return true;
        }catch(Exception e){
            system.debug('Exception----->'+ e.getMessage());
            return false;
        }
    }

}
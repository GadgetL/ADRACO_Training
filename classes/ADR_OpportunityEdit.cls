public class ADR_OpportunityEdit {
	
    @AuraEnabled
    public static List<Opportunity> getLstOpportunities(){
        return [SELECT Id,Name,Amount,CloseDate FROM Opportunity order BY CreatedDate DESC LIMIT 10];
    }
    
     @AuraEnabled
    public static boolean updateOpportunity(List<Opportunity> lstOpportunities){
        try{
            update lstOpportunities;
            return TRUE;
        }catch(Exception e)
        {
            system.debug('EXCEPTION------>'+ e.getMessage());
            return FALSE;
        }
    }
}
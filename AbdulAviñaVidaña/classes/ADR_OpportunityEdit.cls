public class ADR_OpportunityEdit {
	
    @AuraEnabled
    public static List<Opportunity> getLstOpportunities(){
        return[SELECT Id, Name, Amount,CloseDate FROM Opportunity ORDER BY CreatedDate DESC LIMIT 10];
    }
    
    @AuraEnabled
    public static boolean updateOpportunities(List<Opportunity> lstOpportunities){
        try{
            UPDATE lstOpportunities;
            return true;
        }catch(Exception e){
            System.debug('Exception-->'+e.getMessage());
            return false;
        }
    }
}
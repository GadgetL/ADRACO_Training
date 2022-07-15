public class ADR_OpportunityEditApex {
    
    @AuraEnabled
    public static List<Opportunity> getLstOpportunity() {
        return [SELECT Id, Name, Amount, CloseDate FROM Opportunity ORDER BY CreatedDate LIMIT 10];
    }
    
    @AuraEnabled
    public static Boolean updateOpportunity(List<Opportunity> lstOpportunity) {
        try {
            UPDATE lstOpportunity;
            return true;
        }
        catch(Exception e) {
            system.debug('Exception: ' + e.getMessage());
            return false;
        }
    }
}
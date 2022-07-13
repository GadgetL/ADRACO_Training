public class ADR_OpportunityEdit {
    @AuraEnabled
    public static list<Opportunity> getLstOpportunities(){
        return [SELECT Id, Name, Amount, CloseDate FROM Opportunity ORDER BY CreatedDate DESC LIMIT 10];
    }
    
    @AuraEnabled
    public static boolean updateOpportunity(list<Opportunity> lstOpportunities){
        try{
            UPDATE lstOpportunities;
            return true;
        }catch(Exception e){
            System.debug('Exception --> ' + e.getMessage());
            return false;
        }        
    }
}
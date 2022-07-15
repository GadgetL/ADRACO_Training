public class ADR_CreateAndDisplayOppInformation {
    @AuraEnabled
    public static void createOpportunity(Opportunity objOpportunity) {
        try {
            INSERT objOpportunity;
        }
        catch(DmlException e) {
            system.debug('Exception: ' + e.getMessage());
        }
    }
    
    @AuraEnabled
    public static List<Opportunity> displayListOpportunities() {
        return [SELECT Name, StageName, CloseDate, Description, NextStep FROM Opportunity ORDER BY CreatedDate DESC LIMIT 10];
    }
}
public class ADR_OpportunityController {
    
    @AuraEnabled
    public static List<Opportunity> fetchOpportunityRecordsGeneral() {
        return [SELECT Name, Description, StageName, Type, Account.Name, Account.Website, Account.Phone FROM Opportunity LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Opportunity> fetchOpportunityRecordsFilter(String strNameAcc) {
        return [SELECT Name, Description, StageName, Type, Account.Name, Account.Website, Account.Phone FROM Opportunity WHERE Account.Name = :strNameAcc LIMIT 5];
    }
}
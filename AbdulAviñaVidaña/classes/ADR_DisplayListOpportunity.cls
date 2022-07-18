public class ADR_DisplayListOpportunity {

     @AuraEnabled
    public static List<Opportunity> fetchOpportunityAccountRecords(){
        return [SELECT Name, Description, StageName, Type, Account.Name, Account.Site, Account.Phone FROM Opportunity LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Opportunity> fetchOpportunityAccountRecord(String strAccountName){
        return [SELECT Name, Description, StageName, Type, Account.Name, Account.Site, Account.Phone FROM Opportunity WHERE Account.Name=:strAccountName LIMIT 5];
    }
}
public class ADR_DisplayListOfOpportunities {
	@AuraEnabled
    public static List<Opportunity> fetchOpportunityRecords(){
        return [SELECT Id, Name, Description, StageName,Type,Account.Website,Account.Name,Account.Phone, Account.Type FROM Opportunity LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Opportunity> fecthOpportunityRecord(String strAccountName){	
        return [SELECT Id, Name, Description, StageName,Type,Account.Website,Account.Name,Account.Phone, Account.Type FROM Opportunity  WHERE  Account.Name=:strAccountName LIMIT 5];
    }
        
}
public class ADR_DisplayListOfOpportunity {
	@AuraEnabled
    public static List<Opportunity> fetchOpportunityRecords(){
        System.debug('ejecutando metodo');
        return[SELECT Name,Description,StageName,Type,Account.Name,Account.Site,Account.Phone FROM Opportunity Order By createdDate ASC LIMIT 10];
    }
    	@AuraEnabled
    public static List<Opportunity> fetchOpportunityRecord(String strAccountName){
        System.debug('ejecutando metodo');
        return[SELECT Name,Description,StageName,Type,Account.Name,Account.Site,Account.Phone FROM Opportunity where Account.Name=:strAccountName Order By createdDate ASC LIMIT 10];
    }
}
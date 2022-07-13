public class ADR_DisplayListOfOpportunity {
	@AuraEnabled
    public static List<Opportunity> fetchOpportunityRecords(){
        system.debug('Ejecutando metodo');
        return [SELECT Name,Description,StageName,Type,Account.name,Account.Site ,Account.Phone FROM Opportunity Order By createdDate ASC LIMIT 10];
        
    }
    @AuraEnabled
    public static List<Opportunity> fetchOpportunityRecord(String strAccountName){
        system.debug('Ejecutando metodo');
        return [SELECT Name,Description,StageName,Type,Account.name,Account.Site ,Account.Phone FROM Opportunity WHERE Account.name=:strAccountName Order By createdDate ASC LIMIT 5];
        
    }
}
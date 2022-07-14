public class ADR_DisplayListOfOpportunity{
	
    @AuraEnabled
    public static List <Opportunity> fetchOpportunityRecords(){
        System.debug('Ejecutando');
        return[SELECT Id, Name, Description, StageName, Account.Name , Account.Website, Account.Phone, Type FROM Opportunity LIMIT 10];
    }
    
    @AuraEnabled
    public static List <Opportunity> fetchOpportunityRecord(String strName){
        return[SELECT Id,Name, Description, Type FROM Opportunity WHERE Name =: strName LIMIT 5];
    }
}
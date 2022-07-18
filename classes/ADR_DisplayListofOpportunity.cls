public class ADR_DisplayListofOpportunity {
	 @AuraEnabled
    public static List<Opportunity> fetchOpportunityRecords(){
        system.debug('Ejecutando Metodo Opportunity');
        return [SELECT Name,Description,StageName,Type,Account.Name,Account.Site,Account.Phone FROM Opportunity LIMIT 15];
    }
    
     @AuraEnabled
    public static List<Opportunity> fetchOpportunityRecord(string strOpportunityName){
        system.debug('Ejecutando Metodo');
        return [SELECT Name,Description,StageName,Type,Account.Name,Account.Site,Account.Phone FROM Opportunity WHERE Account.Name=:strOpportunityName LIMIT 5];
    }
}
public class ADR_DisplayListOfOpportunity {
	@AuraEnabled
    public static List<Opportunity> fetchOpportunityRecord(){
     	system.debug('Ejecuntando método fetchOpportunityRecord -controlador apex-');
        return [SELECT Id, Name, Description, StageName, Type, Account.Name, Account.Site, Account.Phone FROM Opportunity LIMIT 10];   
    }
    
    @AuraEnabled
    public static List<Opportunity> fetchOpportunityRecordName(String strName1, String strName2, String strName3, String strName4, String strName5){
     	system.debug('Ejecuntando método fetchOpportunityRecord -controlador apex-');
        return [SELECT Id, Name, Description, StageName, Type, Account.Name, Account.Site, Account.Phone
                FROM Opportunity 
                WHERE Account.Name=:strName2 or Account.Name=:strName3 or Account.Name=:strName4 or Account.Name=:strName5 or Account.Name=:strName1
                LIMIT 5];
    }
}
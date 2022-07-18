public class ADR_OpportunityInsertAndDisplay {
	
    @AuraEnabled
    public static void createOpportunity(Opportunity objOpportunity){
        system.debug('obj: ' + objOpportunity);       
        INSERT objOpportunity;
        system.debug('obj: ' + objOpportunity);
   
    }
    
    @AuraEnabled
    public static List<Opportunity> displayOpportunity(){
     	return [SELECT id,Name,Description,StageName,Fiscal,CloseDate FROM Opportunity order BY CreatedDate DESC LIMIT 10];
        
    }
}
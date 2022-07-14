public class ADR_OpportunityInsertAndDisplay {

    @AuraEnabled
    public static void createOpportunity(Opportunity objOpportunity){
        System.debug('-->' + objOpportunity);
        try{
        	Insert objOpportunity;    
        } catch(DmlException e){
            System.debug('The following exception has ocurred:' + e.getMessage());
        } 
    }

    @AuraEnabled
    public static List<Opportunity> displayOpportunity(){
        return [SELECT Id, Name, Description, Probability, FiscalYear, Type, CloseDate, StageName FROM Opportunity  ORDER BY CreatedDate DESC LIMIT 15];
    }


}
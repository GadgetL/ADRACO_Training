public class ADR_OpportunityInsertAndDisplay {
	@AuraEnabled
    public static void createNewOpportunity(Opportunity objOpportunity){

        try{
            Insert objOpportunity;
        } catch(DmlException e){
            System.debug('The follwing exception has ocurred: ' + e.getMessage());
        }
    }
    @AuraEnabled
    public static List<Opportunity> displayOpportunity(){
        return [Select id,Name,StageName,CloseDate,Type,Amount from Opportunity Order By CreatedDate DESC Limit 10];
    }
}
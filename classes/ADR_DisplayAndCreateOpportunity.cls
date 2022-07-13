public class ADR_DisplayAndCreateOpportunity {
@AuraEnabled
    public static List<Opportunity> displayOpporList(){
        return [SELECT Id, Name, Description, Amount, StageName, Type FROM Opportunity ORDER BY CreatedDate DESC LIMIT  10];
    }
	@AuraEnabled
    public static void createOpportunity(Opportunity objOpportunity){
        System.debug('Create Opportunity');
        try{
            INSERT objOpportunity;  
            System.debug('Insert Opportunity');
        }catch(Exception e) {
    		System.debug('The following exception has occurred: ' + e.getMessage());
		}
    } 
}
public class ADR_CreateOpportunity {


    @AuraEnabled
    public static void createNewOpportunity(Opportunity objOpportunity){
        	System.debug(objOpportunity);
            insert objOpportunity;
        try{

        }
        catch(DmlException e) {
   			System.debug('The following exception has occurred: ' + e.getMessage());
		}
    }
    
    @AuraEnabled
    public static list<Opportunity> displayOpportunity(){
        return[SELECT Id, Name, StageName,NextStep,CloseDate,Type, Description FROM Opportunity Order By CreatedDate DESC limit 10];
    }
}
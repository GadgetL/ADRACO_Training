public class ADR_OpportunityInsertAndDisplay {
    @AuraEnabled
    public static void createOpportunity(Opportunity objOpportunity){
   //    System.debug(objAccount);
        try{INSERT objOpportunity;
             
           } catch(DmlException e) {
    			System.debug('The following exception has occurred: ' + e.getMessage());
           }	
       System.debug(objOpportunity);
            
    }
    @AuraEnabled
    public static List<Opportunity> displayOpportunities(){
        return[SELECT Id,Name,Description,Type,StageName,CloseDate from Opportunity Order By CreatedDate DESC LIMIT 10];
    }
        @AuraEnabled
    public static List<Opportunity> displayOpportunities2(){
        return[SELECT Id,Name,Description,Type,StageName,CloseDate from Opportunity Order By CreatedDate ASC LIMIT 10];
    }
}
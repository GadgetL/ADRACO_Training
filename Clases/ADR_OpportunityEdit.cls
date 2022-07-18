public class ADR_OpportunityEdit {
    
  	@AuraEnabled
    public static list<Opportunity> getListOpportunities(){
        return[Select Id,Name,Amount,CloseDate FROM Opportunity ORDER BY CreatedDate DESC LIMIT 10];
    }
    @AuraEnabled
     public static boolean updateOpportunity(list<Opportunity> lstOpportunities){
         try{
             UPDATE lstOpportunities;
             return true;
         }catch(Exception e)
         {
             system.debug('Exception-->'+e.getMessage());
             return false;
         }
    }
}
@RestResource(urlMapping= '/v1/ADR_OpportunityData/')
global class ADR_OpportunityData {
    
    @httpGet
    global static Opportunity doGetMethod(){
        Opportunity objOpportunity = new Opportunity();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');
        System.debug('---->'+ paramsMap.get('id') + paramsMap);
        objOpportunity = [SELECT Id, Name, CloseDate, StageName, Probability , Description FROM Opportunity WHERE id =:strIdOpp];
        return objOpportunity;
    }
    
    
    @httpPost
    global static Opportunity doPostMethod(String name,String closedate, String stagename, integer probability, string description){
        Opportunity  objOpportunity= new Opportunity();
        objOpportunity.Name= name;
        objOpportunity.CloseDate = Date.parse(closedate);
        objOpportunity.StageName = stagename;
        objOpportunity.Probability = probability;
        objOpportunity.Description = description;
        
        insert objOpportunity;
        return objOpportunity;
            
    }
    
    @httpDelete
    global static String doDeleteMethod(){
        
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');
        
        Opportunity  objOpportunity = [SELECT Id, Name FROM Opportunity Where id=:strIdOpp];
        delete objOpportunity;
        return 'The Opportunity was deleted successfully';
    }
    
     @httpPut
    global static Opportunity doPutMethod(String name,String closedate, String stagename, integer probability, string description){
        
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');
        
        Opportunity  objOpportunity = new Opportunity();
        objOpportunity.Id = strIdOpp;
        objOpportunity.Name= name;
        objOpportunity.CloseDate = Date.parse(closedate);
        objOpportunity.StageName = stagename;
        objOpportunity.Probability = probability;
        objOpportunity.Description = description;
        update objOpportunity;
        return objOpportunity;
    }
    

}
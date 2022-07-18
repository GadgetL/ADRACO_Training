@RestResource(urlMapping='/v1/ADR_OpportunityData/')
global class ADR_OpportunityData {

    @HttpGet
    global static Opportunity doGetMethod(){
        Opportunity objOpportunity= new Opportunity();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');
        objOpportunity=[SELECT Id, Name, CloseDate, StageName, Type, OrderNumber__c FROM Opportunity WHERE Id=:strIdOpp];
        return objOpportunity;
    }
    
    @HttpPost
    global static Opportunity doPostMethod(String name, Date closeDate, String stageName, String type, String orderNumber){       
        Opportunity objOpportunity= new Opportunity(Name = name, CloseDate = closeDate, StageName = stageName, Type = type, OrderNumber__c = orderNumber);
        INSERT objOpportunity;
        return objOpportunity;
    }
    
    @HttpDelete
    global static string doDelete(){
         Map<String, String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');
        Opportunity objOpportunity=[SELECT Id, Name FROM Opportunity WHERE id=:strIdOpp];
        delete objOpportunity;
        return 'The Opportunity was delete';
    }
    
    @HttpPut
    global static Opportunity doPutMethod(String name, String stageName, Date closeDate, String type, String orderNumber){
         Map<String, String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');
        Opportunity objOpportunity= new Opportunity(Name=name, StageName = stageName, CloseDate = closeDate, Type = type, OrderNumber__c = orderNumber, id=strIdOpp);
        update objOpportunity;
        return objOpportunity;
    }
}
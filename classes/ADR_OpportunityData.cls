@RestResource(urlMapping='/v1/ADR_OpportunityData/')
global class ADR_OpportunityData {
    @httpGet
    global static Opportunity doGetMethod(){
        Opportunity objOpportunity = new Opportunity();
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdCon = paramsMap.get('id');
        objOpportunity = [SELECT Id,Name,StageName,CloseDate,Type from Opportunity where id=:strIdCon];
        return objOpportunity;
    }
    @httpPost
    global static Opportunity doPostMethod(String name,String lastname,Date closedate, String strtype){
        Opportunity objOpportunity = new Opportunity(Name = name,StageName = lastname, CloseDate = closedate, Type = strtype);
        insert objOpportunity;
        return objOpportunity;
    }
    @httpDelete
    global static String doDeleteMethod(){
       	Map<String,String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');
        Opportunity objOpportunity = [SELECT Id,Name from Opportunity where id=:strIdOpp];
        delete objOpportunity;
        return 'The Opportunity was DELETE';

    }
    @httpPut
    global static Opportunity doPutMethod(String name,String lastname,Date closedate, String strtype ,String description){
       	
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');
        
        Opportunity objOpportunity = new Opportunity(Name = name,StageName = lastname, CloseDate = closedate, Type = strtype,Description = description ,id=strIdOpp);
        update objOpportunity;
        return objOpportunity;     
    }

}
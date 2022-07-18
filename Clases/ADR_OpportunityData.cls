@RestResource(urlMapping='/v1/ADR_OpportunityData/')
global class ADR_OpportunityData {
            @httpGet
    global static Opportunity doGetMethod(){
        Opportunity objOpportunity = new Opportunity();
        Map<String,String> paramsMap = RestContext.request.params;
        string strIsAcc= paramsMap.get('id');
        objOpportunity=[Select Id,Name,NextStep,StageName,CloseDate,Type from Opportunity where Id=:strIsAcc];
        return objOpportunity;
    }
    @httpPost
    global static Opportunity doPostMethod(String name,String nextstep,string stagename,date closedate,string type){
        Opportunity objOpportunity = new Opportunity(Name=name,NextStep=nextstep,StageName=stagename,CloseDate=closedate,Type=type);
        insert objOpportunity;
        return objOpportunity;
    }
    @httpDelete
    global static string doDeleteMethod(){
        Map<String,String> paramsMap= RestContext.request.params;
        String strIdAcc=paramsMap.get('id');
        Opportunity objOpportunity= [Select Id,Name,NextStep,StageName,CloseDate,Type from Opportunity where Id=:strIdAcc];
        delete objOpportunity;
        return 'The Opportunity was deleted';
    }
    
    @httpPut
    global static Opportunity doPutMethod(String name,String nextstep,string stagename,date closedate,string type){
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdAcc=paramsMap.get('id');
        Opportunity objOpportunity = new Opportunity(id=strIdAcc,Name=name,NextStep=nextstep,StageName=stagename,CloseDate=closedate,Type=type);
        update objOpportunity;
        return objOpportunity;
    }
}
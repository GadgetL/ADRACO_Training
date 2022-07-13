@RestResource(urlMapping='/v1/ADR_OpportunityData/')
global class ADR_OpportunityData {
	@httpGet
    global static Opportunity doGetMethod(){
        Opportunity objOpportunity=new Opportunity();
        Map<String, String> paramsMap=RestContext.request.params;
        String strIdOpportunity=paramsMap.get('id');
        objOpportunity=[SELECT Id,Name from Opportunity WHERE Id=:strIdOpportunity];
        return objOpportunity;
    }
    @httpPost
    global static Opportunity doGetMethod(String Name,String Description,String Type,String StageName,String CloseDate){
        Opportunity objOpportunity=new Opportunity(Name=Name,Description=Description,Type=Type,StageName=StageName,CloseDate=Date.parse(CloseDate));
   //     Map<String, String> paramsMap=RestContext.request.params;
        insert objOpportunity;
   //     objAccount=[SELECT Id,Name from Account where id=:strIdAcc];
        return objOpportunity;
    }
    @httpDelete
    global static String doDeleteMethod(){
    //    RestRequest req= RestContext.request;
     //   RestRequest res= RestContext.response;
      //  String strIdAcc=req.requestURI.substring(req.requestURI.lasIdexOf('/')+1);
      	Opportunity objOpportunity=new Opportunity();
        Map<String, String> paramsMap=RestContext.request.params;
        String strIdOpportunity=paramsMap.get('id');
        objOpportunity=[SELECT Id,Name from Opportunity WHERE Id=:strIdOpportunity];
        delete objOpportunity;
        return 'The Opportunity was deleted';
    }
    @httpPut
    global static Opportunity doPutMethod(String Name,String Description,String Type,String StageName,String CloseDate){
    //    RestRequest req= RestContext.request;
     //   RestRequest res= RestContext.response;
      //  String strIdAcc=req.requestURI.substring(req.requestURI.lasIdexOf('/')+1);
      	Map<String, String> paramsMap=RestContext.request.params;
        String strIdOpportunity=paramsMap.get('id');
        Opportunity objOpportunity=new Opportunity(id=strIdOpportunity,Name=Name,Description=Description,Type=Type,StageName=StageName,CloseDate=Date.parse(CloseDate));
        Update objOpportunity;
        return objOpportunity;
    }
}
@RestResource(urlMapping='/v1/ADR_OpportunityData/')
global class ADR_OpportunityData {
	@httpGet
    global static Opportunity doGetMethod(){        
        Opportunity objOpportunity = new Opportunity();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdOpportunity = paramsMap.get('id');
        objOpportunity = [SELECT Id, Name, CloseDate, StageName, CurrencyIsoCode  FROM Opportunity where id=:strIdOpportunity];
        return objOpportunity;
    }
    
    @httpPost
    global static Opportunity doPostMethod(String Name, String CloseDate, String StageName, String CurrencyIsoCode){                
        Opportunity objOpportunity = new Opportunity(Name=Name, CloseDate=Date.valueOf(CloseDate), StageName=StageName, CurrencyIsoCode = CurrencyIsoCode);             
        INSERT objOpportunity;
        return objOpportunity;
    }
    
    @httpDelete
    global static String doDeleteMethod(){     
        Opportunity objOpportunity = new Opportunity();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdOpportunity = paramsMap.get('id');
        objOpportunity = [SELECT Id, Name, CloseDate, StageName, CurrencyIsoCode FROM Opportunity where id=:strIdOpportunity];
        DELETE objOpportunity;
        return 'The Opportunity was deleted';
    }
    
    @httpPut
    global static Opportunity doPutMethod(String Name, String CloseDate, String StageName, String CurrencyIsoCode, String strType){        
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdOpportunity = paramsMap.get('id');
        Opportunity objOpportunity = new Opportunity(Name = Name,CloseDate=Date.valueOf(CloseDate), StageName=StageName, CurrencyIsoCode = CurrencyIsoCode, Type = strType, Id=strIdOpportunity);        
        UPDATE objOpportunity;
        return objOpportunity;
    }
}
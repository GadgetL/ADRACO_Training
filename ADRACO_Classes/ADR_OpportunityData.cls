@RestResource(urlMapping = '/v1/ADR_OpportunityData/')
global class ADR_OpportunityData {

    @httpGet
    global static Opportunity doGetMethod() {
        Opportunity objOpportunity = new Opportunity();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');

        objOpportunity = [SELECT Id, Name, StageName, CloseDate, Amount, Description FROM Opportunity WHERE Id = :strIdOpp];

        return objOpportunity;
    }

    @httpPost
    global static Opportunity doPostMethod(String strName, String strStageName, String strCloseDate, Decimal decAmount, String strDescription) {
        Opportunity objOpportunity = new Opportunity();
        Date dtCloseDate = Date.valueOf(strCloseDate);

        objOpportunity.Name = strName;
        objOpportunity.StageName = strStageName;
        objOpportunity.CloseDate = dtCloseDate;
        objOpportunity.Amount = decAmount;
        objOpportunity.Description = strDescription;

        INSERT objOpportunity;

        return objOpportunity;
    }

    @httpDelete
    global static String doDelete() {
        //RestRequest request = RestContext.request;
        //RestResponse response = RestContext.response;
        //String strIdAcc = request.requestURI.substring(request.requestURI.lastIndexOf('/') + 1);
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');


        Opportunity objOpportunity = [SELECT Id, Name FROM Opportunity WHERE Id = :strIdOpp];

        DELETE objOpportunity;

        return 'The account was deleted';
    }

    @httpPut
    global static Opportunity doPutMethod(String strName, String strStageName, String strCloseDate, Decimal decAmount, String strDescription) {
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdOpp = paramsMap.get('id');

        Opportunity objOpportunity = new Opportunity(Id = strIdOpp);
        Date dtCloseDate = Date.valueOf(strCloseDate);

        objOpportunity.Name = strName;
        objOpportunity.StageName = strStageName;
        objOpportunity.CloseDate = dtCloseDate;
        objOpportunity.Amount = decAmount;
        objOpportunity.Description = strDescription;

        UPDATE objOpportunity;

        return objOpportunity;
    }
}
/************************************************************************************************************
 * Name: ADR_OpportuniyData
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Integration of api methods for the Opportunity standard object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| Integration of api methods
*/
@RestResource(urlMapping='/v1/ADR_OpportuniyData/')
global class ADR_OpportuniyData {
  @httpGet
  global static Opportunity doGetMethod() {
    Opportunity objOpport = new Opportunity();
    Map<string, string> paramsMap = RestContext.request.params;
    string strIdOpport = paramsMap.get('id');
    objOpport =[SELECT Id, Name, StageName, CloseDate, Amount, Type FROM Opportunity WHERE Id=:strIdOpport];
    return objOpport;
  }
  @httpPost
  global static Opportunity doPostMethod(string name, string stagename, string closedate, integer amount, string type){
    Opportunity objOpport = new Opportunity(Name=name, StageName=stagename, CloseDate=date.parse(closedate), Amount=amount, Type=type);
    INSERT objOpport;
    return objOpport;
  }
  @httpDelete
  global static string doDeleteMethod(){
    map<string, string> paramsMap = RestContext.request.params;
    string strIdOpport = paramsMap.get('id');
    Opportunity objOpport = [SELECT Id, Name, StageName, CloseDate, Amount, Type FROM Opportunity WHERE Id=:strIdOpport];
    delete objOpport;
    return 'The Opportunity was deleted';
  }

  @httpPut
  global static Opportunity doPutMethod(string name, string stagename, string closedate, integer amount, string type){
      map<string, string> paramsMap = RestContext.request.params;
      string strIdOpport = paramsMap.get('id');
      Opportunity objOpport = new Opportunity(Name=name, StageName=stagename, CloseDate=date.parse(closedate), Amount=amount, Type=type, id=strIdOpport);
      update objOpport;
      return objOpport;
  }
  //{"name":"paca", "stagename":"Qualification", "closedate":"09/07/2022"(usar date el formato es yyyy-mm-dd), "amount":"36000", "type":"Existing Customer - Upgrade"}
}
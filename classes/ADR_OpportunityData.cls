/*************************************************************************************** 
* Name: ADR_OpportunityData
* Test: ADR_OpportunityData_Test
* Author: Valentín López Morales 
* Description: Required information to Rest API integration
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Connection with workbench developerforce
*/
@RestResource(urlMapping='/v1/ADR_OpportunityData/')
global class ADR_OpportunityData {
    
    /*
    * Method Name: doGetMethod
    * Description: Returns a specific Opportunity
    * Return Type: Opportunity
    * Parameters: 
    */
    @httpGet//this tag is important
    global static Opportunity doGetMethod() {
        ///services/apexrest/v1/ADR_OpportunityData/?id=0068a00001H7sebAAB
        Opportunity objOpportunity = new Opportunity();
        map<string, string> paramsMap = RestContext.request.params;
        string strIdOpp = paramsMap.get('id');
        objOpportunity = [SELECT Id, Name, Description, StageName, Amount, CloseDate FROM Opportunity WHERE Id =: strIdOpp];
        return objOpportunity;
    }
    
    /*
    * Method Name: doPostMethod
    * Description: Returns an inserted Opportunity
    * Return Type: Opportunity
    * Parameters: string name, string description, string stagename, string amount, string closedate
    */
    @httpPost
    global static Opportunity doPostMethod(string name, string description, string stagename, string amount, string closedate){
        //{"name":"ApiOpportunity","description":"Test Api Opportunity","stagename":"Closed Won","amount":"568000","closedate":"29/06/2022"}
        Opportunity objOpportunity = new Opportunity(Name=name,Description=description,StageName=stagename,Amount=Decimal.valueOf(amount),CloseDate=Date.parse(closedate));
        INSERT objOpportunity;
        
        return objOpportunity;
    }
    
    /*
    * Method Name: doDeleteMethod
    * Description: Delete a specific Opportunity
    * Return Type: String
    * Parameters: 
    */
    @httpDelete
    global static string doDeleteMethod(){
        ///services/apexrest/v1/ADR_OpportunityData/?id=0068a00001J7K6xAAF
        Map<string, string> paramsMap = RestContext.request.params;
        string strIdOpp = paramsMap.get('id');
        Opportunity objOpportunity = [SELECT Id, Name FROM Opportunity WHERE Id=:strIdOpp];
        
        DELETE objOpportunity;
        return 'The Opportunity was deleted';
    }
    
    /*
    * Method Name: doPutMethod
    * Description: Returns an updated opportunity
    * Return Type: Opportunity
    * Parameters: string name, string description, string stagename, string amount, string closedate
    */
    @httpPut
    global static Opportunity doPutMethod(string name, string description, string stagename, string amount, string closedate){
        ///services/apexrest/v1/ADR_OpportunityData/?id=0068a00001H7sebAAB
        //{"name":"OppoApiTest","description":"Test Api Opportunity","stagename":"Qualification","amount":"500000","closedate":"02/07/2022"}
        Map<string, string> paramsMap = RestContext.request.params;
        string strIdOpp = paramsMap.get('id');
        
        Opportunity objOpportunity = new Opportunity(Name=name,Description=description,StageName=stagename,Amount=Decimal.valueOf(amount),CloseDate=Date.parse(closedate), id=strIdOpp);
        
        UPDATE objOpportunity;
        return objOpportunity;
    }
}
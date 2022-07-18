/*************************************************************************************** 
* Name: ADR_AccountData
* Test: ADR_AccountData_Test
* Author: Valentín López Morales 
* Description: Required information to Rest API integration
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Connection with workbench developerforce
*/
@RestResource(urlMapping='/v1/ADR_AccountData/')
global class ADR_AccountData {
    
    /*
    * Method Name: doGetMethod
    * Description: Returns a specific Account
    * Return Type: Account
    * Parameters: 
    */
    @httpGet
    global static Account doGetMethod() {
        Account objAccount = new Account();
        map<string, string> paramsMap = RestContext.request.params;
        string strIdAcc = paramsMap.get('id');
        objAccount = [SELECT id, Name FROM Account WHERE Id =: strIdAcc];
        return objAccount;
    }
    
    /*
    * Method Name: doPostMethod
    * Description: Returns an inserted Account
    * Return Type: Account
    * Parameters: 
    */
    @httpPost
    global static Account doPostMethod(string name){
        Account objAccount = new Account(Name=name);
        INSERT objAccount;
        
        return objAccount;
    }
    
    /*
    * Method Name: doDeleteMethod
    * Description: Delete a specific Account
    * Return Type: String
    * Parameters: 
    */
    @httpDelete
    global static string doDeleteMethod(){
        ///services/apexrest/v1/ADR_AccountData/?id=0018a00001rLJ8rAAG
        Map<string, string> paramsMap = RestContext.request.params;
        string strIdAcc = paramsMap.get('id');
        Account objAccount = [SELECT Id, Name FROM Account WHERE Id=:strIdAcc];
        
        DELETE objAccount;
        return 'The Account was deleted';
    }
    
    /*
    * Method Name: doPutMethod
    * Description: Returns an updated Account
    * Return Type: Account
    * Parameters: string name
    */
    @httpPut
    global static Account doPutMethod(string name){
        ///services/apexrest/v1/ADR_AccountData/?id=0018a00001rJJI1AAO
        //{"name":"ApiRest Test"}
        Map<string, string> paramsMap = RestContext.request.params;
        string strIdAcc = paramsMap.get('id');
        
        Account objAccount = new Account(Name=name, id=strIdAcc);
        
        UPDATE objAccount;
        return objAccount;
    }
}
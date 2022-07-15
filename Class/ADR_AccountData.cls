/************************************************************************************************************
 * Name: ADR_AccountData
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Integration of api methods for the account standard object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| Integration of api methods
*/
@RestResource(urlMapping='/v1/ADR_AccountData/')
global class ADR_AccountData {
    @httpGet
    global static Account doGetMethod() {
        Account objAccount = new Account();
        map<string, string> paramsMap = RestContext.request.params;
        string strIdAcc = paramsMap.get('id');
        objAccount = [SELECT id, Name FROM Account where id=:strIdAcc];
        return objAccount;
    }

    @httpPost
    global static Account doPostMethod(string name){
        Account objAccount = new Account(Name = name);
        insert objAccount;
        return objAccount;
    }

    @httpDelete
    global static string doDeleteMethod(){
        //RestRequest req = RestContext.request;
        //RestResponse res = RestContext.response;
        map<string, string> paramsMap = RestContext.request.params;
        string strIdAcc = paramsMap.get('id');//req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account objAccount = [SELECT id, Name FROM Account where id=:strIdAcc];
        delete objAccount;
        return 'The Account was deleted';
    }

    @httpPut
    global static Account doPutMethod(string name){
        map<string, string> paramsMap = RestContext.request.params;
        string strIdAcc = paramsMap.get('id');
        Account objAccount = new Account(Name = name, id=strIdAcc);
        update objAccount;
        return objAccount;
    }

}
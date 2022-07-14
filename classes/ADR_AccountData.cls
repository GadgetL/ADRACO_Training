@RestResource(urlMapping= '/v1/ADR_AccountData/')
global class ADR_AccountData {
    
    @httpGet
    global static Account doGetMethod(){
        
        Account objAccount = new Account();
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
       
        objAccount = [SELECT Id, Name FROM Account Where id=:strIdAcc];
        return objAccount;
    }
    
    @httpPost
    global static Account doPostMethod(String name){
        
        Account objAccount = new Account(Name =name);
        insert objAccount;
        return objAccount;
    }
    
    @httpDelete
    global static String doDeleteMethod(){
        
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        //RestRequest req = RestContext.request;
        //RestResponse res = RestContext.response;
        
        //Account objAccount = new Account();
        
        //String strIdAcc = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);  
       
        Account objAccount = [SELECT Id, Name FROM Account Where id=:strIdAcc];
        delete objAccount;
        return 'The Account was deleted';
    }
    
    @httpPut
    global static Account doPutMethod(String strName){
        
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        //RestRequest req = RestContext.request;
        //RestResponse res = RestContext.response;
        
        //Account objAccount = new Account();
        
        //String strIdAcc = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);  
       
        //Account objAccount = [SELECT Id, Name FROM Account Where id=:strIdAcc];
        Account objAccount = new Account();
        objAccount.Name= strName;
        objAccount.Id = strIdAcc;
        update objAccount;
        return objAccount;
    }
}
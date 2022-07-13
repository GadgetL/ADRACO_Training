@RestResource(urlMapping='/v1/ADR_AccountData/')
global class ADR_AccountData {
	@httpGet
    global static Account doGetMethod(){
        Account objAccount = new Account();
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        objAccount = [SELECT Id,Name from Account where id=:strIdAcc];
        return objAccount;
        
        
    }
    @httpPost
    global static Account doPostMethod(String name){
       
        Account objAccount = new Account(Name = name );
        
        insert objAccount;
        return objAccount;
 
    }
    @httpDelete
    global static String doDeleteMethod(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String strIdAcc = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account objAccount = [SELECT Id,Name from Account where id=:strIdAcc];
        delete objAccount;
        return 'The Account was DELETE';

    }
    @httpPut
    global static Account doPutMethod(String name,String phone,String website, String strnumber){
       	
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        
        Account objAccount = new Account(Name = name,Phone = phone, Website = website, AccountNumber = strnumber,id=strIdAcc);
        update objAccount;
        return objAccount;     
    }
}
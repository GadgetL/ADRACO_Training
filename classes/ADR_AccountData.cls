@RestResource(urlMapping='/v1/ADR_AccountData/')
global class ADR_AccountData {
    @httpGet
    global static Account doGetMethod(){
        Account objAccount=new Account();
        Map<String, String> paramsMap=RestContext.request.params;
        String strIdAcc=paramsMap.get('id');
        objAccount=[SELECT Id,Name from Account where id=:strIdAcc];
        return objAccount;
    }
    @httpPost
    global static Account doGetMethod(String name){
        Account objAccount=new Account(Name=name);
   //     Map<String, String> paramsMap=RestContext.request.params;
        insert objAccount;
   //     objAccount=[SELECT Id,Name from Account where id=:strIdAcc];
        return objAccount;
    }
    @httpDelete
    global static String doDeleteMethod(){
    //    RestRequest req= RestContext.request;
     //   RestRequest res= RestContext.response;
      //  String strIdAcc=req.requestURI.substring(req.requestURI.lasIdexOf('/')+1);
      	Map<String, String> paramsMap=RestContext.request.params;
        String strIdAcc=paramsMap.get('id');
        Account objAccount=new Account();
        objAccount=[SELECT Id,Name from Account where id=:strIdAcc];
        delete objAccount;
        return 'The account was deleted';
    }
    @httpPut
    global static Account doPutMethod(String Name){
    //    RestRequest req= RestContext.request;
     //   RestRequest res= RestContext.response;
      //  String strIdAcc=req.requestURI.substring(req.requestURI.lasIdexOf('/')+1);
      	Map<String, String> paramsMap=RestContext.request.params;
        String strIdAcc=paramsMap.get('id');
        Account objAccount=new Account(Name=Name,id=strIdAcc);
        Update objAccount;
        return objAccount;
    }
}
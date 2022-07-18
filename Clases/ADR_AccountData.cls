@RestResource(urlMapping='/v1/ADR_AccountData/')
global class ADR_AccountData {
            @httpGet
    global static Account doGetMethod(){
        Account objAccount = new Account();
        Map<String,String> paramsMap = RestContext.request.params;
        string strIsAcc= paramsMap.get('id');
        objAccount=[Select Id, Name from Account where Id=:strIsAcc];
        return objAccount;
    }
    @httpPost
    global static Account doPostMethod(String name){
        Account objAccount = new Account(Name=name);
        insert objAccount;
        return objAccount;
    }
}
/*
CRUD API Rest, metodos Get, Post, Delete y Put
 */
@RestResource(urlMapping='/v1/ADR_AccountData/')
global class ADR_AccountData {
    
    @HttpGet
    global static Account doGetMethod(){
        Account objAccount= new Account();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        objAccount=[SELECT Id, Name FROM Account WHERE id=:strIdAcc];
        return objAccount;
    }
    
    @HttpPost
    global static Account doPostMethod(String name){
        //Map<String, String> paramsMap = RestContext.request.params;        
        Account objAccount= new Account(Name = name);
        INSERT objAccount;
        return objAccount;
    }
    
    @HttpDelete
    global static string doDelete(){
         Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        Account objAccount=[SELECT Id, Name FROM Account WHERE id=:strIdAcc];
        delete objAccount;
        return 'The account was delete';
    }
    
    @HttpPut
    global static Account doPutMethod(String name){
         Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        Account objAccount= new Account(Name=name, id=strIdAcc);
        update objAccount;
        return objAccount;
    }
}
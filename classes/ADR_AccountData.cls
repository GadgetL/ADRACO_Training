@RestResource(urlMapping='/v1/ADR_AccountData/')
global class ADR_AccountData {
    @httpGet
    global static Account doGetMethod(){        
        Account objAccount = new Account();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        objAccount = [SELECT Id, Name FROM Account where id=:strIdAcc];
        return objAccount;
    }
    
    @httpPost
    global static Account doPostMethod(String name){        
        //Map<String, String> paramsMap = RestContext.request.params;
        Account objAccount = new Account(Name=name);        
        INSERT objAccount;
        return objAccount;
    }
    
    @httpDelete
    global static String doDeleteMethod(){        
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        Account objAccount = [SELECT Id, Name FROM Account where id=:strIdAcc];
        DELETE objAccount;
        return 'The Account was deleted';
    }
    
    @httpPut
    global static Account doPutMethod(String name){        
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        Account objAccount = new Account(Name = name, Id=strIdAcc);        
        UPDATE objAccount;
        return objAccount;
    }
}
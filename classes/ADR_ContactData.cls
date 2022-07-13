@RestResource(urlMapping='/v1/ADR_ContactData/')
global class ADR_ContactData {
    @httpGet
    global static Contact doGetMethod(){        
        Contact objContact = new Contact();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdContact = paramsMap.get('id');
        objContact = [SELECT Id, LastName, FirstName, Phone, Email FROM Contact where id=:strIdContact];
        return objContact;
    }
    
    @httpPost
    global static Contact doPostMethod(String lastName, String firstName, String phone, String email){                
        Contact objContact = new Contact(LastName=lastName, FirstName=firstName, Phone=phone, Email = email);             
        INSERT objContact;
        return objContact;
    }
    
    @httpDelete
    global static String doDeleteMethod(){     
        Contact objContact = new Contact();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdContact = paramsMap.get('id');
        objContact = [SELECT Id, LastName, FirstName, Phone, Email FROM Contact where id=:strIdContact];
        DELETE objContact;
        return 'The Contact was deleted';
    }
    
    @httpPut
    global static Contact doPutMethod(String LastName, String FirstName, String Phone, String Email){        
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdContact = paramsMap.get('id');
        Contact objContact = new Contact(LastName = LastName, FirstName=FirstName, Phone=Phone, Email = Email, Id=strIdContact);        
        UPDATE objContact;
        return objContact;
    }
}
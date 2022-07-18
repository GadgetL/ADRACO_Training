@RestResource(urlMapping='/v1/ADR_ContactData/')
global class ADR_ContactData {

    @HttpGet
    global static Contact doGetMethod(){
        Contact objContact= new Contact();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdCon = paramsMap.get('id');
        objContact=[SELECT Id, Name FROM Contact WHERE id=:strIdCon];
        return objContact;
    }
    
    @HttpPost
    global static Contact doPostMethod(String firstname, String lastname, String email, String phone){
        //Map<String, String> paramsMap = RestContext.request.params;        
        Contact objContact= new Contact(FirstName = firstname, LastName = lastname, Email = email, Phone = phone);
        INSERT objContact;
        return objContact;
    }
    
    @HttpDelete
    global static string doDelete(){
         Map<String, String> paramsMap = RestContext.request.params;
        String strIdCon = paramsMap.get('id');
        Contact objContact=[SELECT Id, Name FROM Contact WHERE id=:strIdCon];
        delete objContact;
        return 'The Contact was delete';
    }
    
    @HttpPut
    global static Contact doPutMethod(String firstName, String lastName, String email, String phone){
         Map<String, String> paramsMap = RestContext.request.params;
        String strIdCon = paramsMap.get('id');
        Contact objContact= new Contact(FirstName=firstName, LastName=lastName, Email = email, Phone = phone, id=strIdCon);
        update objContact;
        return objContact;
    }
}
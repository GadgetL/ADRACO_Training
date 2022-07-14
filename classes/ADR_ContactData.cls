@RestResource(urlMapping= '/v1/ADR_ContactData/')
global class ADR_ContactData {


    
    @httpGet
    global static Contact doGetMethod(){
        
        Contact objContact = new Contact();
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
       
        objContact = [SELECT Id, Name FROM Contact Where id=:strIdAcc];
        return objContact;
    }
    
    @httpPost
    global static Contact doPostMethod(String lastName, String firstName, String title, String email){
        
        Contact objContact = new Contact(LastName =lastName, FirstName= firstName, Title=title, Email =email );
        insert objContact;
        return objContact;
    }
    
    @httpDelete
    global static String doDeleteMethod(){
        
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdContact = paramsMap.get('id');
        
        Contact objContact = [SELECT Id, Name FROM Contact Where id=:strIdContact];
        delete objContact;
        return 'The Contact was deleted successfully';
    }
    
    @httpPut
    global static Contact doPutMethod(String lastname,String firstname, String title, String email ){
        
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdContact = paramsMap.get('id');
        
        Contact objContact = new Contact();
        
        objContact.LastName= lastname;
        objContact.FirstName = firstname;
        objContact.Title = title;
        objContact.Email = email;
        
        objContact.Id = strIdContact;
        update objContact;
        return objContact;
    }

}
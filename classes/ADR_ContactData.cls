@RestResource(urlMapping='/v1/ADR_ContactData/')
global class ADR_ContactData {
	@httpGet
    global static Contact doGetMethod(){
        Contact objContact = new Contact();
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdCon = paramsMap.get('id');
        objContact = [SELECT Id,Name from Contact where id=:strIdCon];
        return objContact;
    }
    
     @httpPost
    global static Contact doPostMethod(String name,String lastname,String phone, String email){
        Contact objContact = new Contact(FirstName = name,LastName = lastname, Phone = phone, Email = email);
        
        insert objContact;
        return objContact;
  
    }
        @httpDelete
    global static String doDeleteMethod(){
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        Contact objContact = [SELECT Id,Name from Contact where id=:strIdAcc];
        delete objContact;
        return 'The Account was DELETE';
        
        
    }
    @httpPut
    global static Contact doPutMethod(String name,String lastname,String phone, String email){
       	
        Map<String,String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');
        Contact objContact = new Contact(FirstName = name,LastName = lastname, Phone = phone, Email = email,id=strIdAcc);
        update objContact;
        return objContact;     
    }
    
}
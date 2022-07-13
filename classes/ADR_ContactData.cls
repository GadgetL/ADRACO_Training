@RestResource(urlMapping='/v1/ADR_ContactData/')
global class ADR_ContactData {
	@httpGet
    global static Contact doGetMethod(){
        Contact objContact=new Contact();
        Map<String, String> paramsMap=RestContext.request.params;
        String strIdContact=paramsMap.get('id');
        objContact=[SELECT Id,FirstName,LastName,Phone,Email from Contact where id=:strIdContact];
        return objContact;
    }
    @httpPost
    global static Contact doGetMethod(String FirstName, String LastName, String Phone, String Email){
        Contact objContact=new Contact(FirstName=FirstName,LastName=LastName,Phone=Phone,Email=Email);
   //     Map<String, String> paramsMap=RestContext.request.params;
        insert objContact;
   //     objAccount=[SELECT Id,Name from Account where id=:strIdAcc];
        return objContact;
    }
     @httpDelete
    global static String doDeleteMethod(){
    //    RestRequest req= RestContext.request;
     //   RestRequest res= RestContext.response;
      //  String strIdAcc=req.requestURI.substring(req.requestURI.lasIdexOf('/')+1);
      	Map<String, String> paramsMap=RestContext.request.params;
        String strIdContact=paramsMap.get('id');
        Contact objContact=new Contact();
        objContact=[SELECT Id,Name from Contact where id=:strIdContact];
        delete objContact;
        return 'The Contact was deleted';
    }
    @httpPut
    global static Contact doPutMethod(String FirstName,String LastName, String Phone, String Email){
    //    RestRequest req= RestContext.request;
     //   RestRequest res= RestContext.response;
      //  String strIdAcc=req.requestURI.substring(req.requestURI.lasIdexOf('/')+1);
      	Map<String, String> paramsMap=RestContext.request.params;
        String strIdContact=paramsMap.get('id');
        Contact objContact=new Contact(id=strIdContact,FirstName=FirstName,LastName=LastName,Phone=Phone,Email=Email);
        Update objContact;
        return objContact;
    }
}
@RestResource(urlMapping='/v1/ADR_ContactData/')
	global class ADR_ContactData {
            @httpGet
    global static Contact doGetMethod(){
        Contact objContact = new Contact();
        Map<String,String> paramsMap = RestContext.request.params;
        string strIsAcc= paramsMap.get('id');
        objContact=[Select Id, FirstName,LastName,Email,Phone from Contact where Id=:strIsAcc];
        return objContact;
    }
    @httpPost
    global static Contact doPostMethod(String firstname,String lastname,string email,string phone){
        Contact objContact = new Contact(FirstName=firstname,LastName=lastname,Email=email,Phone=phone);
        insert objContact;
        return objContact;
    }
}
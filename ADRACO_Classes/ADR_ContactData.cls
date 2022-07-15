@RestResource(urlMapping = '/v1/ADR_ContactData/')
global class ADR_ContactData {

    @httpGet
    global static Contact doGetMethod() {
        Contact objContact = new Contact();
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdCont = paramsMap.get('id');

        objContact = [SELECT Id, LastName, FirstName, Phone, Description FROM Contact WHERE Id = :strIdCont];

        return objContact;
    }

    @httpPost
    global static Contact doPostMethod(String strLastName, String strFirstName, String strDescription, String strPhone) {
        Contact objContact = new Contact();

        objContact.LastName = strLastName;
        objContact.FirstName = strFirstName;
        objContact.Description = strDescription;
        objContact.Phone = strPhone;
        INSERT objContact;

        return objContact;
    }

    @httpDelete
    global static String doDelete() {
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');


        Contact objContact = [SELECT Id, Name FROM Contact WHERE Id = :strIdAcc];

        DELETE objContact;

        return 'The contact was deleted';
    }

    @httpPut
    global static Contact doPutMethod(String strLastName, String strFirstName, String strDescription, String strPhone) {
        Map<String, String> paramsMap = RestContext.request.params;
        String strIdAcc = paramsMap.get('id');

        Contact objContact = new Contact(Id = strIdAcc);
        objContact.LastName = strLastName;
        objContact.FirstName = strFirstName;
        objContact.Description = strDescription;
        objContact.Phone = strPhone;

        UPDATE objContact;

        return objContact;
    }
}

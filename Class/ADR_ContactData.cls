/************************************************************************************************************
 * Name: ADR_ContactData
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Integration of api methods for the Contact standard object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| Integration of api methods
*/
@RestResource(urlMapping='/v1/ADR_ContactData/')
global class ADR_ContactData {
    @httpGet
    global static Contact doGetMethod() {
        Contact objContact = new Contact();
        map<string, string> paramsMap = RestContext.request.params;
        string strIdConta = paramsMap.get('id');
        objContact = [SELECT id, Name FROM Contact where Id=:strIdConta];
        return objContact;
    }
    @httpPost
    global static Contact doPostMethod(string fristname, string lastname, string phone, string title){
        Contact objContact = new Contact(FirstName=fristname, LastName=lastname, Phone=phone, Title=title);
        INSERT objContact;
        return objContact;
    }
    @httpDelete
    global static string doDeleteMethod(){
        map<string, string> paramsMap = RestContext.request.params;
        string strIdConta = paramsMap.get('id');
        Contact objContact = [SELECT id, Name FROM Contact where id=:strIdConta];
        delete objContact;
        return 'The Contact was deleted';
    }

    @httpPut
    global static Contact doPutMethod(string fristname, string lastname, string phone, string title){
        map<string, string> paramsMap = RestContext.request.params;
        string strIdConta = paramsMap.get('id');
        Contact objContact = new Contact(FirstName=fristname, LastName=lastname, Phone=phone, Title=title, id=strIdConta);
        update objContact;
        return objContact;
    }
    
}
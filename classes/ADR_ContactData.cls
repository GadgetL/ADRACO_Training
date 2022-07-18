/*************************************************************************************** 
* Name: ADR_ContactData
* Test: ADR_ContactData_Test
* Author: Valentín López Morales 
* Description: Required information to Rest API integration
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Connection with workbench developerforce
*/
@RestResource(urlMapping='/v1/ADR_ContactData/')
global class ADR_ContactData {
    
    /*
    * Method Name: doGetMethod
    * Description: Returns a specific Contact
    * Return Type: Contact
    * Parameters: 
    */
    @httpGet
    global static Contact doGetMethod() {
        Contact objContact = new Contact();
        map<string, string> paramsMap = RestContext.request.params;
        string strIdCont = paramsMap.get('id');
        objContact = [SELECT id, Name FROM Contact WHERE Id =: strIdCont];
        return objContact;
    }
    
    /*
    * Method Name: doPostMethod
    * Description: Returns an inserted Contact
    * Return Type: Contact
    * Parameters: string firstname, string lastname, string email, string title
    */
    @httpPost
    global static Contact doPostMethod(string firstname, string lastname, string email, string title){
        Contact objContact = new Contact(FirstName=firstname,LastName=lastname,Email=email,Title=title);
        INSERT objContact;
        
        return objContact;
    }
    
    /*
    * Method Name: doDeleteMethod
    * Description: Delete a specific Contact
    * Return Type: String
    * Parameters: 
    */
    @httpDelete
    global static string doDeleteMethod(){
        ///services/apexrest/v1/ADR_ContactData/?id=0038a00002ssxLuAAI
        Map<string, string> paramsMap = RestContext.request.params;
        string strIdAcc = paramsMap.get('id');
        Contact objContact = [SELECT Id, Name FROM Contact WHERE Id=:strIdAcc];
        
        DELETE objContact;
        return 'The Contact was deleted';
    }
    
    /*
    * Method Name: doPutMethod
    * Description: Returns an updated Contact
    * Return Type: Contact
    * Parameters: string firstname, string lastname, string email, string title
    */
    @httpPut
    global static Contact doPutMethod(string firstname, string lastname, string email, string title){
        ///services/apexrest/v1/ADR_ContactData/?id=0038a00002ssxKRAAY
        //{"firstname":"Jose","lastname":"ApiJose","email":"jjose@test.com","title":""}
        Map<string, string> paramsMap = RestContext.request.params;
        string strIdAcc = paramsMap.get('id');
        
        Contact objContact = new Contact(FirstName=firstname,LastName=lastname,Email=email,Title=title, id=strIdAcc);
        
        UPDATE objContact;
        return objContact;
    }
}
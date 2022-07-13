/******************************************************************************************************
* Name: ADR_HttpClient
* Test Class: ADR_HttpClient_Test
* Author: Liliana Trejo
* Description: Retrieve the required information to webservice access
**********************************************************************************************************
LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Liliana Trejo		| 23-06-2022			| v0.1				| Conection with User API
*/
public class ADR_HttpClient {
	private  http http;
    private httpRequest client;
    
    public ADR_HttpClient(String strEndPoint, String strMethod){
        client = new HttpRequest();
        client.setTimeout(12000);
    	client.setEndpoint(strEndPoint);
		client.setMethod(strMethod);
    }
    
    public HttpResponse getResponse(){
        http = new Http();
        return http.send(client);
    }
}
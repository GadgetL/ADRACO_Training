/************************************************************************************************************
 * Name: ADR_HttpClient
 * Class test: ADR_HttpClient_Test
 * Autor: Francisco Reyes
 * Description: Retrieve the required information to webservice access
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Conection with User API
*/

public class ADR_HttpClient {
    private Http http;
    private httpRequest client;
    
    public ADR_HttpClient(string strEndPoint, string strMethod){
        client = new HttpRequest();
        client.setTimeout(120000);
        client.setEndpoint(strEndPoint);
        client.setMethod(strMethod);
    } 
    public HttpResponse getResponse(){
        http = new http();
        return http.send(client);
    }

}
/***************************************************************************************
 * Name: ADR_ADR_HTTPClient
 * Test: ADR_HTTPClient_Test
 * Author: Valentín López Morales
 * Description: Http and Method consumption
****************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change Description	
----------------------------------------------------------------------------------------
Valentín López	| 23-06-22 			| v0.1 				| Conection with Http
*/
public class ADR_HTTPClient {
    private Http http;
    private HttpRequest client;
    
    /*
    * Method Name: ADR_HTTPClient
    * Description: Receives endpoint and type method (GET, PUT, POST, DELETE)
    * Return Type: 
    * Parameters: string strEndPoint, string strMethod
    */
    public ADR_HTTPClient(string strEndPoint, string strMethod){
        client = new HttpRequest();
        client.setTimeout(120000);
        client.setEndPoint(strEndPoint);
        client.setMethod(strMethod);
    }
    
    /*
    * Method Name: getResponse
    * Description: get a response from the client
    * Return Type: http
    * Parameters: 
    */
    public HttpResponse getResponse(){
        http = new Http();
        return http.send(client);
    }
}
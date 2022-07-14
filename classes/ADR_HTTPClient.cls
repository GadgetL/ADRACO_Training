/*
 * Name: ADR_ServiceUtility
 * Test Class : ADR_ServiceUtility_Test
 * Author: Luis Bernardo Torres Arrellano
 * Description: Llamar Web Service, constructor
 * *************************************************************
LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Luis Torres  		| 23-06-2022			| v0.1				| Conection with User API
*/

public class ADR_HTTPClient {
    private http http;
    private httpRequest client;
    
    public ADR_HTTPClient(String strEndPoint, String strMethod){
        client = new httpRequest();
        client.setTimeout(120000);
		client.setEndpoint(strEndPoint);
		client.setMethod(strMethod);
        
    }
    
    public HttpResponse getResponse(){
        http = new Http();
        return http.send(client);
    }

}
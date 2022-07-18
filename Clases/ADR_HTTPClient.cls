public class ADR_HTTPClient {
	private http http;
    private httpRequest client;
    
    public ADR_HTTPClient(string strEndPoint, String strMethod){
        client= new HttpRequest();
        client.setTimeout(120000);
        client.setEndpoint(strEndPoint);
        client.setMethod(strMethod);
    }
    
    public HttpResponse getResponse(){
        http = new http();
        return http.send(client);
    }
}
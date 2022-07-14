public class ADR_HTTPClient {

    private http http;
    private httpRequest client;
    
    public ADR_HTTPClient(String strEndPoint, String strMethod){
        client = new HttpRequest();
        client.setTimeout(120000);
		client.setEndpoint(strEndPoint);
		client.setmethod(strMethod);
    }
    
    public HttpResponse getResponse(){
        http = new Http();
        return http.send(client);
    }
}
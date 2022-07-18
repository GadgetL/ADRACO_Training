
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
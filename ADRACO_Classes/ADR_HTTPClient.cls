public class ADR_HTTPClient {
    private Http atrHttp;
    private HttpRequest client;
    
    public ADR_HTTPClient(String strEndPoint, String strMethod) {
        client = new HttpRequest();
        client.setTimeout(120000);
		client.setEndPoint(strEndPoint);
		client.setMethod(strMethod);
    }
    
    public HttpResponse getResponse() {
        atrHttp = new Http();
        return atrHttp.send(client);
    }
}
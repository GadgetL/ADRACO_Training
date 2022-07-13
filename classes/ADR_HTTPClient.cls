public class ADR_HTTPClient {
	private http http;
    private httpRequest client;
    
    public ADR_HTTPClient(string strEndPoint, string strMethod){
        client=new HttpRequest();
        client.setTimeout(120000);

        //client.setEndpoint('https://restcountries.com/v3.1/capital/lima');
        client.setEndpoint(strEndPoint);
        client.setMethod(strMethod);
    }
    public HttpResponse getResponse(){
        http= new Http();
        return http.send(client);
    }
}
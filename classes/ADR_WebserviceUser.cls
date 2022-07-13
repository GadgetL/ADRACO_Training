public class ADR_WebserviceUser {	  
    public static void getUserInformation(){
        try{
            String strServiceName = 'GetUsers';
            ADR_HttpClient request = new ADR_HttpClient(ADR_ServiceUtility.getEndpoint(strServiceName), 'GET');
            HttpResponse httpResponse = request.getResponse();
            System.debug('::-->' + httpResponse.getBody());
            System.debug('::-->' + httpResponse.getStatusCode());   
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCESS_CODE){
                System.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperUser wrapperData = null;
                wrapperData = (ADR_ResponseWrapper.wrapperUser) System.JSON.deserialize(httpResponse.getBody(), ADR_ResponseWrapper.wrapperUser.class);
                System.debug('Data ---> ' + wrapperData.data);
                for(ADR_ResponseWrapper.wrapperData objData : wrapperData.data){
                	System.debug('id: ' + objData.id);    
                    System.debug('email: ' + objData.email);    
                    System.debug('first name: ' + objData.first_name);    
                    System.debug('last name: ' + objData.last_name);
                    System.debug('avatar: ' + objData.avatar);    
                    System.debug('<-------------------------> ');    
                }
            }
            else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                System.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch(Exception e){
            System.debug('Error: ' + e.getMessage());
        }        
        /*HttpRequest client = new HttpRequest();
		client.setTimeout(12000);
    	client.setEndpoint('https://reqres.in/api/users');
		client.setMethod('GET');
        Http http = new Http();
        HttpResponse httpResponse = http.send(client);
        System.debug('::-->' + httpResponse.getStatusCode());
        System.debug('::-->' + httpResponse.getBody());*/
    }
}
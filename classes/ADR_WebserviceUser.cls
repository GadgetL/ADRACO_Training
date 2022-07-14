//LLamada a todo los web services
public class ADR_WebserviceUser {
	    
    public static void getUserInformation(){
        try{
            String strServiceName = 'GetUsers';
            ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
            HttpResponse httpResponse = request.getResponse();
            System.debug(':::----->' + httpResponse.getBody());
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCCESS_CODE){
                System.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperUser wrappData = null;
                wrappData = (ADR_ResponseWrapper.wrapperUser) System.JSON.deserialize(httpResponse.getBody(), ADR_ResponseWrapper.wrapperUser.class);
                System.debug('Data:' + wrappData.data);
                for(ADR_ResponseWrapper.wrapperData objData :wrappData.data){
                    System.debug('id:' + objData.Id);
                    System.debug('Email:' + objData.Email);
                    System.debug('First Name:' + objData.first_name);
                    System.debug('Last Name:' + objData.last_name);
                    System.debug('Avatar:' + objData.avatar);
                    
                }
                
            }else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                System.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch(Exception e){
            System.debug('Error:' + e.getMessage());
        }
       
    }
   

}
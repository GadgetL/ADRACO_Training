public class ADR_WebServiceUser {
    public static final Integer SUCESS_CODE=200;
    public static void getUserInformation(){
         try{
         String strServiceName= 'GetUsers';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
         system.debug(':::---->'+httpResponse.getBody());  
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperUser wrappData = null;
                wrappData = (ADR_ResponseWrapper.wrapperUser)System.JSON.deserialize(httpResponse.getBody(),ADR_ResponseWrapper.wrapperUser.class);
                System.debug('Data:::---->' + wrappData.data);
                for(ADR_ResponseWrapper.wrapperData objData: wrappData.data){
                    System.debug('----------------------');
                    system.debug('id '+ objData.Id);
                     system.debug('email'+objData.email);
                     system.debug('first_name'+objData.First_name);
                     system.debug('last_name'+objData.Last_name);
                     system.debug('avatar'+objData.Avatar);
                     system.debug('------------------------------');
     
                }
            }else if(httpResponse.getStatusCode()== ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR); 
            }
        }catch(Exception e){
            system.debug('Error:'+e.getMessage());
        }
 
        
    }
    

}
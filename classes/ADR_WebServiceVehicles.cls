public class ADR_WebServiceVehicles {
    
    public static final Integer SUCESS_CODE=200;
    public static void getUserInformation(){
         try{
         String strServiceName= 'GetVehicles';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
         system.debug(':::---->'+httpResponse.getBody());  
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperVehicles wrappData = null;
                wrappData = (ADR_ResponseWrapper.wrapperVehicles)System.JSON.deserialize(httpResponse.getBody(),ADR_ResponseWrapper.wrapperVehicles.class);
                System.debug('Data:::---->' + wrappData.Results);
                for(ADR_ResponseWrapper.wrapperDataVehicles objData: wrappData.Results){
                    System.debug('----------------------');
                    system.debug('id '+ objData.Make_ID);
                     system.debug('Name'+objData.Make_Name);
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
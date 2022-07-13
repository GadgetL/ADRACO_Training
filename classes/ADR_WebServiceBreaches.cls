public class ADR_WebServiceBreaches {
	public static final Integer SUCESS_CODE=200;
    public static void getUserInformation(){
         try{
         String strServiceName= 'GetBreaches';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
             String strResponse='{"Data":'+ httpResponse.getBody()+ '}';
              System.debug('--->' + strResponse);
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperBreachesRoot wrappData = null;
                wrappData = (ADR_ResponseWrapper.wrapperBreachesRoot)System.JSON.deserialize(strResponse,ADR_ResponseWrapper.wrapperBreachesRoot.class);
              
               for(ADR_ResponseWrapper.wrapperBreaches objData: wrappData.Data){
                   System.debug('----------------------');
                    system.debug('Name '+ objData.Name);
                   system.debug('Name '+ objData.Title);
                   system.debug('Name '+ objData.Domain);
                   system.debug('Name '+ objData.BreachDate);
                   system.debug('Name '+ objData.AddedDate);
                   system.debug('Name '+ objData.PwnCount);
                   system.debug('Name '+ objData.Description);
                   system.debug('Name '+ objData.LogoPath);
                   system.debug('Name '+ objData.DataClasses);
                   system.debug('Name '+ objData.IsVerified);
                   system.debug('Name '+ objData.DataClasses);
               }
                
            }else if(httpResponse.getStatusCode()== ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR); 
            }
        }catch(Exception e){
            system.debug('Error:'+e.getMessage());
        }
 
        
    }
}
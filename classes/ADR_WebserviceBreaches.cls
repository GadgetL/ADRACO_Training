public class ADR_WebserviceBreaches {
	public static void getAnswerInformation(){
        try{
            String strServiceName = 'getBreaches';
            ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtilityBreaches.getEndpoint(strServiceName),'GET');
            HttpResponse httpResponse = request.getResponse();
            System.debug(':::----->' + httpResponse.getBody());
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCCESS_CODE){
                System.debug('Status: '+ ADR_RestUtility.SUCCESS);
                
                ADR_ResponseWrapper.wrapperRootBreach wrappData = null;
                String strResponse='{"Data":'+ httpResponse.getBody()+ '}';
                System.debug('--->' + strResponse);
                
                wrappData = (ADR_ResponseWrapper.wrapperRootBreach) System.JSON.deserialize(strResponse, ADR_ResponseWrapper.wrapperRootBreach.class);
                System.debug('Data:' + wrappData.data);
                for(ADR_ResponseWrapper.wrapperBreach objData :wrappData.data){
                    System.debug('-----------');
                    System.debug('Name:' + objData.Name);
                    System.debug('Title:' + objData.Title);
                    System.debug('Domain:' + objData.Domain);
                    System.debug('Name:' + objData.Name);
                    System.debug('Breach Date:' + objData.BreachDate);
                    System.debug('AddedDate:' + objData.AddedDate);
                    System.debug('ModifiedDate:' + objData.ModifiedDate);
                    System.debug('PwnCount:' + objData.PwnCount);
                    System.debug('Description:' + objData.Description);
                    System.debug('LogoPath:' + objData.LogoPath);
                    System.debug('IsVerified:' + objData.IsVerified);
                    System.debug('IsFabricated:' + objData.IsFabricated);
                    System.debug('IsSensitive:' + objData.IsSensitive);
                    System.debug('IsRetired:' + objData.IsRetired);                    
                    System.debug('IsSpamList:' + objData.IsSpamList);
                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
            }else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                System.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch(Exception e){
            System.debug('Error in :' + e.getMessage());
        }
       
    }
}
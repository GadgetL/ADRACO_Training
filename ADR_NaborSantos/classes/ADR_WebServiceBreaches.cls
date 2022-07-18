public class ADR_WebServiceBreaches {
	public static void getBreachesInformation(){
        try{
            String strServiceName = 'GetBranches';
            ADR_HttpClient request = new ADR_HttpClient(ADR_ServiceUtility.getEndpoint(strServiceName), 'GET');
            HttpResponse httpResponse = request.getResponse();
            System.debug('::-->' + httpResponse.getBody());
            System.debug('::-->' + httpResponse.getStatusCode());   
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCESS_CODE){
                System.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperBreachesRoot wrapperData = null;
                String strResponse = '{"Data" :'+ httpResponse.getBody() +'}';                
                wrapperData = (ADR_ResponseWrapper.wrapperBreachesRoot) System.JSON.deserialize(strResponse, ADR_ResponseWrapper.wrapperBreachesRoot.class);
                System.debug('Data ---> ' + wrapperData);
                for(ADR_ResponseWrapper.wrapperBreaches objData : wrapperData.Data){
					System.debug('Name: ' + objData.Name);    
                    System.debug('Title: ' + objData.Title); 
                    System.debug('Domain: ' + objData.Domain);    
                    System.debug('BreachDate: ' + objData.BreachDate); 
                    System.debug('AddedDate: ' + objData.AddedDate); 
                    System.debug('ModifiedDate: ' + objData.ModifiedDate); 
                    System.debug('PwnCount: ' + objData.PwnCount);   
                    System.debug('Description: ' + objData.Description); 
                    System.debug('LogoPath: ' + objData.LogoPath);     
					System.debug('DataClasses: ' + objData.DataClasses); 
                    System.debug('IsVerified: ' + objData.IsVerified); 
                    System.debug('IsFabricated: ' + objData.IsFabricated);
                    System.debug('IsSensitive: ' + objData.IsSensitive); 
                    System.debug('IsRetired: ' + objData.IsRetired);
                    System.debug('IsSpamList: ' + objData.IsSpamList); 
                    System.debug('IsMalware: ' + objData.IsMalware);
                    System.debug('<-------------------------> ');     
                }        
            }
            else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                System.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch(Exception e){
            System.debug('Error: ' + e.getMessage());
        }        
    }
}
public class ADR_WebServiceVehicle {
public static void getVehiclesInformation(){
        try{
            String strServiceName = 'GetVehicles';
            ADR_HttpClient request = new ADR_HttpClient(ADR_ServiceUtility.getEndpoint(strServiceName), 'GET');
            HttpResponse httpResponse = request.getResponse();
            System.debug('::-->' + httpResponse.getBody());
            System.debug('::-->' + httpResponse.getStatusCode());   
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCESS_CODE){
                System.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperVehicle wrapperData = null;
                wrapperData = (ADR_ResponseWrapper.wrapperVehicle) System.JSON.deserialize(httpResponse.getBody(), ADR_ResponseWrapper.wrapperVehicle.class);
                System.debug('Data ---> ' + wrapperData.Results);
                for(ADR_ResponseWrapper.wrapperDataVehicle objData : wrapperData.Results){
                	System.debug('Make ID: ' + objData.Make_ID);    
                    System.debug('Make Name: ' + objData.Make_Name);  
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
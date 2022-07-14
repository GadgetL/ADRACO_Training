public class ADR_WebserviceVehicle {
	public static void getVehicleInformation(){
        try{
            String strServiceName = 'GetVehicles';
            ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtilityVehicle.getEndpoint(strServiceName),'GET');
            HttpResponse httpResponse = request.getResponse();
            System.debug(':::----->' + httpResponse.getBody());
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCCESS_CODE){
                System.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperDataA wrappData = null;
                wrappData = (ADR_ResponseWrapper.wrapperDataA) System.JSON.deserialize(httpResponse.getBody(), ADR_ResponseWrapper.wrapperDataA.class);
                System.debug('Data:' + wrappData);
                for(ADR_ResponseWrapper.wrapperResult objData :wrappData.results){
                    System.debug('-----------');
                    System.debug('Make id:' + objData.Make_ID);
                    System.debug('Make Name:' + objData.Make_Name);
                    
                    
                }
            }else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                System.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch(Exception e){
            System.debug('Error:' + e.getMessage());
        }
       
    }
}
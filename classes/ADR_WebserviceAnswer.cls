public class ADR_WebserviceAnswer {
	public static void getAnswerInformation(){
        try{
            String strServiceName = 'getAnswers';
            ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtilityAnswer.getEndpoint(strServiceName),'GET');
            HttpResponse httpResponse = request.getResponse();
            System.debug(':::----->' + httpResponse.getBody());
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCCESS_CODE){
                System.debug('Status: '+ ADR_RestUtility.SUCCESS);
                
                ADR_ResponseWrapper.Root wrappData = null;
                String strResponse='{"Data":'+ httpResponse.getBody()+ '}';
                System.debug('--->' + strResponse);
                
                wrappData = (ADR_ResponseWrapper.Root) System.JSON.deserialize(strResponse, ADR_ResponseWrapper.Root.class);
                System.debug('Data:' + wrappData.data);
                for(ADR_ResponseWrapper.Datum objData :wrappData.data){
                    System.debug('-----------');
                    System.debug('id:' + objData.Category.id);
                    System.debug('title:' + objData.Category.title);
                    System.debug('created_at:' + objData.Category.created_at);
                    System.debug('updated_at:' + objData.Category.updated_at);
                    System.debug('clues_count:' + objData.Category.clues_count);
                    
                    
                }
                
                
                
            }else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                System.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch(Exception e){
            System.debug('Error in :' + e.getMessage());
        }
       
    }
}
public class ADR_WebServiceRandom {
	public static void getRandomInformation(){
        try{
            String strServiceName = 'GetRandom';
            ADR_HttpClient request = new ADR_HttpClient(ADR_ServiceUtility.getEndpoint(strServiceName), 'GET');
            HttpResponse httpResponse = request.getResponse();
            System.debug('::-->' + httpResponse.getBody());
            System.debug('::-->' + httpResponse.getStatusCode());   
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCESS_CODE){
                System.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperRandomRoot wrapperData = null;
                String strResponse = '{"Data" :'+ httpResponse.getBody() +'}';                
                wrapperData = (ADR_ResponseWrapper.wrapperRandomRoot) System.JSON.deserialize(strResponse, ADR_ResponseWrapper.wrapperRandomRoot.class);
                System.debug('Data ---> ' + wrapperData);
                for(ADR_ResponseWrapper.wrapperRandom objData : wrapperData.Data){
					System.debug('ID: ' + objData.id);    
                    System.debug('answer: ' + objData.answer); 
                    System.debug('question: ' + objData.question);    
                    System.debug('airdate: ' + objData.airdate); 
                    System.debug('created_at: ' + objData.created_at); 
                    System.debug('updated_at: ' + objData.updated_at); 
                    System.debug('category_id: ' + objData.category_id);   
                    System.debug('game_id: ' + objData.game_id); 
                    System.debug('invalid_count: ' + objData.invalid_count);     
					System.debug('created_at: ' + objData.created_at); 
                    System.debug('updated_at: ' + objData.updated_at); 
                    System.debug('Category id: ' + objData.category.id);
                    System.debug('Category title: ' + objData.category.title);
                    System.debug('Category created_at: ' + objData.category.created_at);
                    System.debug('Category updated_at: ' + objData.category.updated_at);
                    System.debug('Category clues_count: ' + objData.category.clues_count);
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
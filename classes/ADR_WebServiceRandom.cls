public class ADR_WebServiceRandom {
	public static final Integer SUCESS_CODE=200;
    public static void getUserInformation(){
         try{
         String strServiceName= 'GetRandom';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
        // system.debug(':::---->'+httpResponse.getBody());  
             String strResponse='{"Data":'+ httpResponse.getBody()+ '}';
              System.debug('--->' + strResponse);
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperDataRoot wrappData = null;
                wrappData = (ADR_ResponseWrapper.wrapperDataRoot)System.JSON.deserialize(strResponse,ADR_ResponseWrapper.wrapperDataRoot.class);
                //System.debug('Data:::---->' + wrappData.Data);
                
               
                for(ADR_ResponseWrapper.wrapperRandom objData: wrappData.Data){
                    System.debug('----------------------');
                    system.debug('id '+ objData.id);
                    system.debug('answer '+ objData.answer);
                    system.debug('question '+ objData.question);
                    system.debug('value '+ objData.value);
                    system.debug('airdate '+ objData.airdate);
                    system.debug('created_at '+ objData.created_at);
                    system.debug('updated_at '+ objData.updated_at);
                    system.debug('category_id '+ objData.category_id);
                    system.debug('game_id '+ objData.game_id);
                    system.debug('invalid_count '+ objData.invalid_count);
                    system.debug('id category'+ objData.category.id);
                    system.debug('title category'+ objData.category.title);
                    system.debug('created_at category'+ objData.category.created_at);
                    system.debug('updated_at category'+ objData.category.updated_at);
                    system.debug('clues_count category'+ objData.category.clues_count);
                        
                   
                    
                    
                
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
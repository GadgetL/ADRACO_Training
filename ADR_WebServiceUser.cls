/************************************************************************************************************
 * Name: ADR_WebServiceUser
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Connection and breakdown of web service information.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Access to the information
*/
public class ADR_WebServiceUser {
    //llamada a los web service.    
    public static void getUserInformation(){
        try{
            string strServiceName = 'GetRandom';
            ADR_HttpClient request = new ADR_HttpClient(ADR_ServiceUtility.getEndPoint(strServiceName), 'GET');
            HttpResponse httpResponse = request.getResponse();
            //system.debug('Status: '+ httpResponse.getStatusCode());
            system.debug('Body: '+ httpResponse.getBody());
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
            	string strhttpResponse = '{"data" :'+httpResponse.getBody()+'}';//string strhttpResponse = '{"dataBreaches" :'+httpResponse.getBody()+'}';
                ADR_RandomWrapper.Root wrappData = null;
                wrappData = (ADR_RandomWrapper.Root) system.JSON.deserialize(strhttpResponse, ADR_RandomWrapper.Root.class);
                for(ADR_RandomWrapper.wrapperData objData : wrappData.data){
                     system.debug('id: '+objData.id);
                     system.debug('answer: '+objData.answer);
                     system.debug('question: '+objData.question);
                     system.debug('value: '+objData.value);
                     system.debug('airdate: '+objData.airdate);
                     system.debug('created_at: '+objData.created_at);
                     system.debug('updated_at: '+objData.updated_at);
                     system.debug('category_id: '+objData.category_id);
                     system.debug('game_id: '+objData.game_id);
                     system.debug('invalid_count: '+objData.invalid_count);
                     system.debug('------------------------------');
                     system.debug('category id: '+objData.category.id);
                     system.debug('category title: '+objData.category.title);
                     system.debug('category created_at: '+objData.category.created_at);
                     system.debug('category updated_at: '+objData.category.updated_at);
                     system.debug('category clues_count: '+objData.category.clues_count);
                }
            }else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch (Exception e){
            system.debug('Error: '+ e.getMessage());
        }        
    }

}
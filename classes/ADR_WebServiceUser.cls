/***************************************************************************************
 * Name:ADR_WebServiceUser
 * Test: ADR_WebServiceUser_Test
 * Author: Valentín López Morales
 * Description: Data API consumption
****************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change Description	
----------------------------------------------------------------------------------------
Valentín López	| 23-06-22 			| v0.1 				| Conection with Data
*/
public class ADR_WebServiceUser {
    public static final Integer SUCCESS_CODE = 200;
    
    /*
    * Method Name: getUserInformation
    * Description: Returns the values from Rest API of GetUsers
    * Return Type: void
    * Parameters: 
    */
    public static void getUserInformation(){
        try{
            string strServiceName = 'GetUsers';
            ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName), 'GET');
            HttpResponse httpResponse = request.getResponse();
            system.debug(':::---->'+httpResponse.getBody());
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCCESS_CODE){
                system.debug(':::---->'+ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperUser wrapperData = null;
                wrapperData = (ADR_ResponseWrapper.wrapperUser) System.JSON.deserialize(httpResponse.getBody(), ADR_ResponseWrapper.wrapperUser.class);
                system.debug(':::---->'+wrapperData.data);
                for( ADR_ResponseWrapper.wrapperData objData : wrapperData.data){
                    System.debug('id: '+objData.id);
                    System.debug('First Name: '+objData.id);
                    System.debug('Last Name: '+objData.first_name);
                    System.debug('Email: '+objData.last_name);
                    System.debug('Avatar: '+objData.avatar);
                }
            }else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(':::---->'+ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch(Exception e){
            system.debug('Error: '+e.getMessage());
        }
        
    }
    
    /*
    * Method Name: getMakeinformation
    * Description: Returns the values from Rest API of GetMakes
    * Return Type: void
    * Parameters: 
    */
    public static void getMakeinformation(){
        try{
            string strServiceName = 'GetMakes';
            ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName), 'GET');
            HttpResponse httpResponse = request.getResponse();
            system.debug(':::---->'+httpResponse.getBody());
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCCESS_CODE){
                system.debug(':::---->'+ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapperMakes.wrapperMake wrapperData = null;
                wrapperData = (ADR_ResponseWrapperMakes.wrapperMake) System.JSON.deserialize(httpResponse.getBody(), ADR_ResponseWrapperMakes.wrapperMake.class);
                system.debug(':::---->'+wrapperData.Results);
                for( ADR_ResponseWrapperMakes.wrapperData objData : wrapperData.Results){
                    System.debug('Make_ID: '+objData.Make_ID);
                    System.debug('Make_Name: '+objData.Make_Name);
                }
            }else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(':::---->'+ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch(Exception e){
            system.debug('Error: '+e.getMessage());
        }
        
    }
    
    /*
    * Method Name: getRandominformation
    * Description: Returns the values from Rest API of GetRandom
    * Return Type: void
    * Parameters: 
    */
    public static void getRandominformation(){
        try{
            string strServiceName = 'GetRandom';
            ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName), 'GET');
            HttpResponse httpResponse = request.getResponse();
            system.debug(':::---->'+httpResponse.getBody());
            string strResponse = '{"Data":'+httpResponse.getBody()+'}';
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCCESS_CODE){
                system.debug(':::---->'+ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapperRandom.wrapperRandom wrapperData = null;
                wrapperData = (ADR_ResponseWrapperRandom.wrapperRandom) System.JSON.deserialize(strResponse, ADR_ResponseWrapperRandom.wrapperRandom.class);
                system.debug(':::---->'+wrapperData);
                for(ADR_ResponseWrapperRandom.wrapperData objData : wrapperData.data){                    
                    System.debug('Id: '+objData.id);
                    System.debug('Answer: '+objData.answer);
                    System.debug('Question: '+objData.question);
                    System.debug('Value: '+objData.value);
                    System.debug('Airdate: '+objData.airdate);
                    System.debug('Created_at: '+objData.created_at);
                    System.debug('Updated_at: '+objData.updated_at);
                    System.debug('Category_id: '+objData.category_id);
                    System.debug('game_id: '+objData.game_id);
                    System.debug('invalid_count: '+objData.invalid_count);
                    System.debug('Category');
                    System.debug('Id: '+objData.category.id);
                    System.debug('Title: '+objData.category.title);
                    System.debug('Created_at: '+objData.category.created_at);
                    System.debug('Updated_at: '+objData.category.updated_at);
                    System.debug('Clues_count: '+objData.category.clues_count);
                }
            }else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(':::---->'+ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch(Exception e){
            system.debug('Error: '+e.getMessage());
        }
        
    }
    
    /*
    * Method Name: getBreachesinformation
    * Description: Returns the values from Rest API of GetBreaches
    * Return Type: void
    * Parameters: 
    */
    public static void getBreachesinformation(){
        try{
            string strServiceName = 'GetBreaches';
            ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName), 'GET');
            HttpResponse httpResponse = request.getResponse();
            system.debug(':::---->'+httpResponse.getBody());
            string strResponse = '{"Data":'+httpResponse.getBody()+'}';
            if(httpResponse.getStatusCode() == ADR_RestUtility.SUCCESS_CODE){
                system.debug(':::---->'+ADR_RestUtility.SUCCESS);
                ADR_ResponseWraperBreaches.wrapperBreache wrapperData = null;
                wrapperData = (ADR_ResponseWraperBreaches.wrapperBreache) System.JSON.deserialize(strResponse, ADR_ResponseWraperBreaches.wrapperBreache.class);
                system.debug(':::---->'+wrapperData);
                for(ADR_ResponseWraperBreaches.wrapperData objData : wrapperData.data){                    
                    System.debug('Name: '+objData.Name);
                    System.debug('Title: '+objData.Title);
                    System.debug('Domain: '+objData.Domain);
                    System.debug('BreachDate: '+objData.BreachDate);
                    System.debug('AddedDate: '+objData.AddedDate);
                    System.debug('ModifiedDate: '+objData.ModifiedDate);
                    System.debug('PwnCount: '+objData.PwnCount);
                    System.debug('Description: '+objData.Description);
                    System.debug('LogoPath: '+objData.LogoPath);
                    System.debug('DataClasses: '+objData.DataClasses);
                    System.debug('IsVerified: '+objData.IsVerified);
                    System.debug('IsFabricated: '+objData.IsFabricated);
                    System.debug('IsSensitive: '+objData.IsSensitive);
                    System.debug('IsRetired: '+objData.IsRetired);
                    System.debug('IsSpamList: '+objData.IsSpamList);
                    System.debug('IsMalware: '+objData.IsMalware);
                }
            }else if(httpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(':::---->'+ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }catch(Exception e){
            system.debug('Error: '+e.getMessage());
        }
        
    }
}
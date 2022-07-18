public class ADR_Webserviceuser {
	public static final Integer SUCCESS_CODE = 200;
    Public static void getUserInformation(){
       try{
         String strServiceName= 'GetUsers';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
         system.debug(':::---->'+httpResponse.getBody());  
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperUser wrappData= null;
                wrappData=(ADR_ResponseWrapper.wrapperUser) System.JSON.deserialize(httpResponse.getBody(),ADR_ResponseWrapper.wrapperUser.class );
           		system.debug('Data:::---->'+wrappData.data);
                for(ADR_ResponseWrapper.wrapperData objData: wrappData.data){
				system.debug('id'+objData.Id);
                     system.debug('email'+objData.email);
                     system.debug('first_name'+objData.First_name);
                     system.debug('last_name'+objData.Last_name);
                     system.debug('avatar'+objData.Avatar);
                     system.debug('------------------------------');
                    
                }
            }else if(httpResponse.getStatusCode()== ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR); 
            }
        }catch(Exception e){
            system.debug('Error:'+e.getMessage());
        }
    }
    
     Public static void getVehicleInformation(){
       try{
         String strServiceName= 'GetVehicles';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
         system.debug(':::---->'+httpResponse.getBody());  
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperVehicles wrappData= null;
                wrappData=(ADR_ResponseWrapper.wrapperVehicles) System.JSON.deserialize(httpResponse.getBody(),ADR_ResponseWrapper.wrapperVehicles.class );
           		system.debug('Data:::---->'+wrappData.Results);
                for(ADR_ResponseWrapper.wrapperDataVehicles objData: wrappData.Results){
				system.debug('id'+objData.Make_Id);
                     system.debug('Make Name'+objData.Make_Name);
                     system.debug('------------------------------');
                    
                }
            }else if(httpResponse.getStatusCode()== ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR); 
            }
        }catch(Exception e){
            system.debug('Error:'+e.getMessage());
        }
    }
    
    Public static void getRandomInformation(){
       try{
         String strServiceName= 'GetRandom';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
         system.debug(':::---->'+httpResponse.getBody());  
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.RandomRoot wrappData= null;
                String strResponse='{"Data":'+ httpResponse.getBody()+ '}';
                System.debug('--->' + strResponse);
                wrappData=(ADR_ResponseWrapper.RandomRoot) System.JSON.deserialize(strResponse,ADR_ResponseWrapper.RandomRoot.class );
           		system.debug('Data:::---->'+wrappData.Data);
                for(ADR_ResponseWrapper.RandomDatum objData: wrappData.Data){
				system.debug('id: '+objData.id);
                     system.debug('Title: '+objData.category.title);
                    system.debug('Create at: '+objData.category.created_at);
                    system.debug('Update at: '+objData.category.updated_at);
                    system.debug('Clues Count: '+objData.category.clues_count);
                     system.debug('------------------------------');
                    
                }
            }else if(httpResponse.getStatusCode()== ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR); 
            }
        }catch(Exception e){
            system.debug('Error:'+e.getMessage());
        }
    }
    
    Public static void getBreachesInformation(){
       try{
         String strServiceName= 'GetBreaches';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
         system.debug(':::---->'+httpResponse.getBody());  
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.BreachesRoot wrappData= null;
                String strResponse='{"Data":'+ httpResponse.getBody()+ '}';
                System.debug('--->' + strResponse);
                wrappData=(ADR_ResponseWrapper.BreachesRoot) System.JSON.deserialize(strResponse,ADR_ResponseWrapper.BreachesRoot.class );
           		system.debug('Data:::---->'+wrappData.Data);
                for(ADR_ResponseWrapper.BreachesDatum objData: wrappData.Data){
				system.debug('Name: '+objData.Name);
                     system.debug('Title: '+objData.Title);
                    system.debug('Domain: '+objData.Domain);
                    system.debug('Breach Date: '+objData.BreachDate);
                    system.debug('Modified Date: '+objData.ModifiedDate);
                    system.debug('Pwn Count: '+objData.PwnCount);
                    system.debug('Description: '+objData.Description);
                    system.debug('DataClasses: '+objData.DataClasses);
                    system.debug('IsVerified: '+objData.IsVerified);
                    system.debug('IsFabricated: '+objData.IsFabricated);
                    system.debug('IsSensitive: '+objData.IsSensitive);
                    system.debug('IsRetired: '+objData.IsRetired);
                    system.debug('IsSpamList: '+objData.IsSpamList);
                    system.debug('IsMalware: '+objData.IsMalware);
                    
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
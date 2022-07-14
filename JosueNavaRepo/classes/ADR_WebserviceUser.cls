public class ADR_WebserviceUser {
    
    public static void getUserInformation(){
        try{
    String strServiceName='GetUsers';
    ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
    HttpResponse HttpResponse=request.getResponse();
	System.debug(':::-->'+HttpResponse.getBody());
    System.debug(':::-->'+HttpResponse.getStatusCode());
            if(HttpResponse.getStatusCode()==ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperUser wrappData = null;
                wrappData=(ADR_ResponseWrapper.wrapperUser) System.JSON.deserialize(httpResponse.getBody(),ADR_ResponseWrapper.wrapperUser.class);
                system.debug('Data:::--->'+wrappData.data);
                for(ADR_ResponseWrapper.wrapperData objData: wrappData.data){
                    system.debug('Id: '+objData.Id);
                    system.debug('Email: '+objData.Email);
                    system.debug('FirstName: '+objData.First_name);
                    system.debug('LastName: '+objData.Last_name);
                    system.debug('Avatar: '+objData.avatar);
                    system.debug('*************************************');
                }
                
                
            }else if(HttpResponse.getStatusCode()==ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
    }catch(Exception e){
        System.debug('Error:'+e.getMessage());
    }
        
    } 
     
    //vehiculos
    public static void getVehiculeInformation(){
        try{
    String strServiceName='GetMakes';
    ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
    HttpResponse HttpResponse=request.getResponse();
	System.debug(':::-->'+HttpResponse.getBody());
    System.debug(':::-->'+HttpResponse.getStatusCode());
            if(HttpResponse.getStatusCode()==ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperVehicles wrappResult = null;
                wrappResult=(ADR_ResponseWrapper.wrapperVehicles) System.JSON.deserialize(httpResponse.getBody(),ADR_ResponseWrapper.wrapperVehicles.class);
                system.debug('Data:::--->'+wrappResult.Results);
                for(ADR_ResponseWrapper.wrapperResult objResult: wrappResult.Results){
                    system.debug('Id: '+objResult.Make_ID);
                    system.debug('Make: '+objResult.Make_Name);
                    system.debug('*************************************');
                }
                
                
            }else if(HttpResponse.getStatusCode()==ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
    }catch(Exception e){
        System.debug('Error:'+e.getMessage());
    }
        
    } 
    //categoria
    public static void getCategoryInformation(){
        try{
    String strServiceName='GetCategories';
    ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
    HttpResponse HttpResponse=request.getResponse();
	System.debug(':::-->'+HttpResponse.getBody());
    System.debug(':::-->'+HttpResponse.getStatusCode());
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
               String strResponse='{"data":'+httpResponse.getBody()+'}'; 
               System.debug('--->'+strResponse);
               ADR_ResponseWrapper.wrapperRoot wrapperRoot=null;
               wrapperRoot=(ADR_ResponseWrapper.wrapperRoot) system.JSON.deserialize(strResponse,ADR_ResponseWrapper.wrapperRoot.class);
                System.debug('Data -->'+wrapperRoot.Data);
                for(ADR_ResponseWrapper.wrapperRandom objData: wrapperRoot.Data){

            		system.debug('id'+objData.category.id);
                     system.debug('title'+objData.category.title);
                    system.debug('Created'+objData.category.created_at);
                     system.debug('update'+objData.category.updated_at);
                    system.debug('count'+objData.category.clues_count);
                     
                     system.debug('**********************************');
                }
                
                
            }else if(HttpResponse.getStatusCode()==ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
    }catch(Exception e){
        System.debug('Error:'+e.getMessage());
    }
        
    } 

    //Breach
    
    public static void getBreachInformation(){
        try{
    String strServiceName='GetBreach';
    ADR_HTTPClient request = new ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
    HttpResponse HttpResponse=request.getResponse();
	System.debug(':::-->'+HttpResponse.getBody());
    System.debug(':::-->'+HttpResponse.getStatusCode());
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
               String strResponse='{"data":'+httpResponse.getBody()+'}'; 
               System.debug('--->'+strResponse);
               ADR_ResponseWrapper.wrapperRootBreach wrapperRootBreach=null;
               wrapperRootBreach=(ADR_ResponseWrapper.wrapperRootBreach) system.JSON.deserialize(strResponse,ADR_ResponseWrapper.wrapperRootBreach.class);
                System.debug('Data -->'+wrapperRootBreach.Data);
                for(ADR_ResponseWrapper.wrapperBreach objBreachData: wrapperRootBreach.Data){

            		system.debug('id'+objBreachData.Name);
                     system.debug('title'+objBreachData.Title);
                    system.debug('Created'+objBreachData.Domain);
                     system.debug('update'+objBreachData.BreachDate);
                    system.debug('count'+objBreachData.AddedDate);
                    system.debug('id'+objBreachData.ModifiedDate);
                     system.debug('title'+objBreachData.PwnCount);
                    system.debug('Created'+objBreachData.Description);
                     system.debug('update'+objBreachData.LogoPath);
                    system.debug('count'+objBreachData.DataClasses);
                     system.debug('id'+objBreachData.IsVerified);
                     system.debug('title'+objBreachData.IsFabricated);
                    system.debug('Created'+objBreachData.IsSensitive);
                     system.debug('update'+objBreachData.IsRetired);
                    system.debug('count'+objBreachData.IsSpamList);
                    system.debug('count'+objBreachData.IsMalware);
                     
                     system.debug('*************************************************');
                }
                
                
            }else if(HttpResponse.getStatusCode()==ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
    }catch(Exception e){
        System.debug('Error:'+e.getMessage());
    }
        
    } 
}
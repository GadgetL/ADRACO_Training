public class ADR_WebserviceUser {
	public static final Integer SUCCESS_CODE = 200;
    
    Public static void getUserInformation(){
        /*try{
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
        }*/
		/*
        try{
         String strServiceName= 'getMakes';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
         system.debug(':::---->'+httpResponse.getBody());  
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.wrapperMaker wrapperResults= null;
                wrapperResults=(ADR_ResponseWrapper.wrapperMaker) System.JSON.deserialize(httpResponse.getBody(),ADR_ResponseWrapper.wrapperMaker.class );
           		system.debug('Data:::---->'+wrapperResults.Results);
                for(ADR_ResponseWrapper.wrapperResults objResult: wrapperResults.Results){
					 system.debug('ID '+objResult.Make_ID);
                     system.debug('NAME '+objResult.Make_Name);
                     system.debug('------------------------------');   
                }
            }else if(httpResponse.getStatusCode()== ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR); 
            }
        }catch(Exception e){
            system.debug('Error:'+e.getMessage());
        }*/
        
        /*
        try{
         String strServiceName= 'GetRandom';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
         system.debug(':::---->'+httpResponse.getBody());  
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                String strResponse='{"Data":'+ httpResponse.getBody()+ '}';
                System.debug('--->' + strResponse);
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.WrapperRoot WrapperDatum= null;
                WrapperDatum=(ADR_ResponseWrapper.WrapperRoot) System.JSON.deserialize(strResponse,ADR_ResponseWrapper.WrapperRoot.class );
           		system.debug('Data:::---->'+WrapperDatum.Data);
                for(ADR_ResponseWrapper.WrapperDatum objDatum: WrapperDatum.Data){	
                     system.debug('Category Id '+objDatum.category.id);
                     system.debug('Category Title '+objDatum.category.title);
                     system.debug('Category Created '+objDatum.category.created_at);
                     system.debug('Category Updated '+objDatum.category.updated_at);
                     system.debug('Category Clues '+objDatum.category.clues_count);
                     system.debug('------------------------------');   
                }
            }else if(httpResponse.getStatusCode()== ADR_RestUtility.BAD_REQUEST_ERROR_CODE){
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR); 
            }
        }catch(Exception e){
            system.debug('Error:'+e.getMessage());
        }*/
        
        try{
         String strServiceName= 'GetBreaches';
         ADR_HTTPClient request = new  ADR_HTTPClient(ADR_ServiceUtility.getEndpoint(strServiceName),'GET');
         HttpResponse httpResponse=request.getResponse();
         system.debug(':::---->'+httpResponse.getBody());  
            if(httpResponse.getStatusCode()== ADR_RestUtility.SUCESS_CODE){
                String strResponse='{"Data":'+ httpResponse.getBody()+ '}';
                System.debug('--->' + strResponse);
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.Root Datum= null;
                Datum=(ADR_ResponseWrapper.Root) System.JSON.deserialize(strResponse,ADR_ResponseWrapper.Root.class );
           		system.debug('Data:::---->'+Datum.Data);
                for(ADR_ResponseWrapper.Datum objDatum: Datum.Data){	
                     system.debug('Name '+objDatum.Name);
                     system.debug('Title '+objDatum.Title);
                     system.debug('Domain '+objDatum.Domain);
                     system.debug('Breach '+objDatum.BreachDate);
                     system.debug('Added '+objDatum.AddedDate);
                     system.debug('Modified '+objDatum.ModifiedDate);
                     system.debug('Pwn '+objDatum.PwnCount);
                     system.debug('Description '+objDatum.Description);
                     system.debug('Logo '+objDatum.LogoPath);
                     system.debug('Data '+objDatum.DataClasses);
                     system.debug('Verified '+objDatum.IsVerified);
                     system.debug('Fabricated '+objDatum.IsFabricated);
                     system.debug('Sensitive '+objDatum.IsSensitive);
                     system.debug('Retired '+objDatum.IsRetired);
                     system.debug('Spam '+objDatum.IsSpamList); 
                     system.debug('Malware '+objDatum.IsMalware);
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
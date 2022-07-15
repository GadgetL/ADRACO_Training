public class ADR_WebServiceInformation {
    public static final Integer SUCCESS_CODE = 200;
    
    public static void getUserInformation() {
        try {
            String strServiceName = 'GetUsers';
            ADR_HTTPClient client = new ADR_HTTPClient(ADR_ServiceUtility.getEndPoint(strServiceName), 'GET');
            HttpResponse myHttpResponse = client.getResponse();
            
            system.debug('Estatus: '+ myHttpResponse.getStatusCode());
            system.debug('Body: '+ myHttpResponse.getBody());
            
            if(myHttpresponse.getStatusCode() == ADR_RestUtility.SUCESS_CODE) {
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.WrapperUser wrappData = null;
                wrappData = (ADR_ResponseWrapper.WrapperUser) system.JSON.deserialize(myHttpResponse.getBody(), ADR_ResponseWrapper.WrapperUser.class);
                for(ADR_ResponseWrapper.WrapperData objWrapp : wrappData.data) {
                    system.debug('Id: ' + objWrapp.id);
                    system.debug('Email: ' + objWrapp.email);
                    system.debug('First Name: ' + objWrapp.first_name);
                    system.debug('Last Name: ' + objWrapp.last_name);
                    system.debug('Avatar: ' + objWrapp.avatar);
                }
            }
            else if(myHttpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE) {
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }
        catch(Exception e) {
            system.debug('Error: ' + e.getMessage());
        }
    }
    
    public static void getVehicleInformation() {
        try {
            String strServiceName = 'GetVehicles';
            ADR_HTTPClient client = new ADR_HTTPClient(ADR_ServiceUtility.getEndPoint(strServiceName), 'GET');
            HttpResponse myHttpResponse = client.getResponse();
            
            system.debug('Estatus: '+ myHttpResponse.getStatusCode());
            system.debug('Body: '+ myHttpResponse.getBody());
            
            if(myHttpresponse.getStatusCode() == ADR_RestUtility.SUCESS_CODE) {
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.WrapperVehicle wrappData = (ADR_ResponseWrapper.WrapperVehicle) system.JSON.deserialize(myHttpResponse.getBody(), ADR_ResponseWrapper.WrapperVehicle.class);
                for(ADR_ResponseWrapper.WrapperDataVehicle objWrapp : wrappData.Results) {
                    system.debug('Id: ' + objWrapp.Make_ID);
                    system.debug('Nombre: ' + objWrapp.Make_Name);
                }
            }
            else if(myHttpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE) {
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }
        catch(Exception e) {
            system.debug('Error: ' + e.getMessage());
        }
    }
    
    public static void getRandomInformation() {
        try {
            String strServiceName = 'GetRandom';
            ADR_HTTPClient client = new ADR_HTTPClient(ADR_ServiceUtility.getEndPoint(strServiceName), 'GET');
            HttpResponse myHttpResponse = client.getResponse();
            system.debug('Estatus: '+ myHttpResponse.getStatusCode());
            system.debug('Body: '+ myHttpResponse.getBody());
            
            if(myHttpresponse.getStatusCode() == ADR_RestUtility.SUCESS_CODE) {
                String strNewResponseBody = myHttpResponse.getBody().substring(1, myHttpResponse.getBody().length());
                
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.WrapperRandom wrappData = (ADR_ResponseWrapper.WrapperRandom) system.JSON.deserialize(strNewResponseBody, ADR_ResponseWrapper.WrapperRandom.class);
                
                system.debug('Id: ' + wrappData.id);
                system.debug('Answer: ' + wrappData.answer);
                system.debug('Question: ' + wrappData.question);
                system.debug('Value: ' + wrappData.value);
                system.debug('Air Date: ' + wrappData.airdate);
                system.debug('Created At: ' + wrappData.created_at);
                system.debug('Updated At: ' + wrappData.updated_at);
                system.debug('Category ID: ' + wrappData.category_id);
                system.debug('Game ID: ' + wrappData.game_id);
                system.debug('Invalid count: ' + wrappData.invalid_count);
                system.debug('Category-----------------------------');
                system.debug('Category ID: ' + wrappData.category.id);
                system.debug('Category Title: ' + wrappData.category.title);
                system.debug('Category Created At: ' + wrappData.category.created_at);
                system.debug('Category Updated At: ' + wrappData.category.updated_at);
                system.debug('Category Clues Count: ' + wrappData.category.clues_count);
            }
            else if(myHttpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE) {
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }
        catch(Exception e) {
            system.debug('Error: ' + e.getMessage());
        }
    }
    
    public static void getBreachInformation() {
        try {
            String strServiceName = 'GetBreaches';
            ADR_HTTPClient client = new ADR_HTTPClient(ADR_ServiceUtility.getEndPoint(strServiceName), 'GET');
            HttpResponse myHttpResponse = client.getResponse();
            system.debug('Estatus: '+ myHttpResponse.getStatusCode());
            system.debug('Body: '+ myHttpResponse.getBody());
            
            if(myHttpresponse.getStatusCode() == ADR_RestUtility.SUCESS_CODE) {
                String strNewResponseBody = '{"data":' + myHttpResponse.getBody() + '}';
                system.debug(strNewResponseBody);
                
                system.debug(ADR_RestUtility.SUCCESS);
                ADR_ResponseWrapper.WrapperBreach wrappData = (ADR_ResponseWrapper.WrapperBreach) system.JSON.deserialize(strNewResponseBody, ADR_ResponseWrapper.WrapperBreach.class);
                for(ADR_ResponseWrapper.WrapperDataBreach objWrapp : wrappData.data){
                    system.debug('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%');
                    system.debug('Name: ' + objWrapp.Name);
                	system.debug('Title: ' + objWrapp.Title);
                    system.debug('Domain: ' + objWrapp.Domain);
                    system.debug('BreachDate: ' + objWrapp.BreachDate);
                    system.debug('AddedDate: ' + objWrapp.AddedDate);
                    system.debug('ModifiedDate: ' + objWrapp.ModifiedDate);
                    system.debug('PwnCount: ' + objWrapp.PwnCount);
                    system.debug('Description: ' + objWrapp.Description);
                    system.debug('LogoPath: ' + objWrapp.LogoPath);
                    system.debug('Data Classes--------------------------------------');
                    for(String strDataClasses : objWrapp.DataClasses) {
                        system.debug(strDataClasses);
                    }
                    system.debug('--------------------------------------------------');
                    system.debug('Is Verified: ' + objWrapp.IsVerified);
                    system.debug('Is Fabricated: ' + objWrapp.IsFabricated);
                    system.debug('Is Sensitive: ' + objWrapp.IsSensitive);
                    system.debug('Is Retired: ' + objWrapp.IsRetired);
                    system.debug('Is Spam List: ' + objWrapp.IsSpamList);
                    system.debug('Is Malware: ' + objWrapp.IsMalware);
                }
            }
            else if(myHttpResponse.getStatusCode() == ADR_RestUtility.BAD_REQUEST_ERROR_CODE) {
                system.debug(ADR_RestUtility.BAD_REQUEST_ERROR);
            }
        }
        catch(Exception e) {
            system.debug('Error: ' + e.getMessage());
        }
    }
}
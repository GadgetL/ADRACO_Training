/**************************************************************************************
 * Name: ADR_ServiceUtility
 * Test Class: ADR_ServiceUtility_Test
 * Author: Amaru Arevalo
 * Description: Retrieve the required information to webservice access
 * ************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change description
---------------------------------------------------------------------------------------
Amaru Arevalo	| 23-06-2022		| v0.1			| Conection with User API
*/
public class ADR_ServiceUtility {
	
    
    public static String getEndpoint(string strServiceName){
        String strEndPoint;
        try{
            strEndPoint=[SELECT Id, ADR_EndPoint__c, ADR_ServiceName__c FROM ADR_Resources_Services__mdt WHERE ADR_ServiceName__c=:strServiceName].ADR_EndPoint__c;
        }catch(Exception e){
            strEndPoint='Endpoint not found in Metadata';
            system.debug('Error: '+ e.getMessage());
        }
        return strEndPoint;
    }
}
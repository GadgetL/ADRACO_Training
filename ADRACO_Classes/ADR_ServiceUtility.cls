/******************************************************************************************************
* Name: ADR_ServiceUtility
* Test Class: ADR_ServiceUtility_Test
* Author: Liliana Trejo
* Description: Retrieve the required information to webservice access
*******************************************************************************************************
LastModifiedBy | LastModifiedDate | Modification Id | Change description
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Liliana Trejo  | 23-06-2022       | v0.1            | Conection with User API
*/

public class ADR_ServiceUtility {
    public static String getEndPoint(String strServiceName) {
        String strEndPoint;
        
        try {
			strEndPoint = [SELECT Id, ADR_Service_Name__c, ADR_EndPoint__c FROM ADR_Resources_Services__mdt WHERE ADR_Service_Name__c = :strServiceName LIMIT 1].ADR_EndPoint__c;           
        }
        catch(Exception e) {
            strEndPoint = 'Endpoint not found in Metadata';
            system.debug('Error: ' + e.getMessage());
        }
        
        return strEndPoint;
    }
}
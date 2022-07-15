/************************************************************************************************************
 * Name:ADR_ServiceUtility
 * Class test:ADR_ServiceUtility_Test
 * Autor: Francisco Reyes
 * Description: Consulting end point of a specific web service.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 23-06-2022			| v0.1				| Consulting metadata for end point
*/

public class ADR_ServiceUtility {
    public static String getEndPoint(string strServiceName){
        string strEndPoint;
        try{
            strEndPoint=[SELECT Id, ADR_ServiceName__c, ADR_EndPoint__c FROM ADR_Resources_Services__mdt WHERE ADR_ServiceName__c=:strServiceName LIMIT 1].ADR_EndPoint__c;
        }catch(Exception e){
            strEndPoint = 'EndPoint not found in Metadata';
            system.debug('Error: '+ e.getMessage());
        }
        return strEndPoint;
    }

}
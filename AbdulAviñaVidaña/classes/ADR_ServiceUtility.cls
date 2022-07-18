/***********************************************************************************
*Name: ADR_ServiceUtility
*Test Class: ADR_ServiceUtility_Test
*Author: Josue Nava
*Description: Retrieve the requied information to webservice access
************************************************************************************
lastModifiedBy  | LastModifiedDate   | Modification Id | Change description
----------------------------------------------------------------------------
Josue Nava      | 23-06-2022		 | v0.1				| conection with user API
*/
public class ADR_ServiceUtility {

    public static String getEndpoint(String strServiceName){
        String strEndPoint;
        try{
            strEndPoint=[SELECT Id, ADR_ServiceName__c, ADR_EndPoint__c FROM ADR_ResourcesServices__mdt WHERE ADR_ServiceName__c=:strServiceName LIMIT 1].ADR_EndPoint__c;
        }catch(Exception e){
            strEndPoint='Endpoint not found in Metadata';
            system.debug('Érror:'+e.getMessage());
        }
        return strEndPoint;
    }
}
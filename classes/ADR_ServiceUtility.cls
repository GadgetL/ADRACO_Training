/*
 * Name: ADR_ServiceUtility
 * Test Class : ADR_ServiceUtility_Test
 * Author: Luis Bernardo Torres Arrellano
 * Description: Retrieve the required information to webservice acces
 * *************************************************************
LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Luis Torres  		| 23-06-2022			| v0.1				| Conection with User API
*/

public class ADR_ServiceUtility {

    public static String getEndpoint(String strServiceName){
        String strEndPoint;
        try{
            strEndPoint=[SELECT Id, ADR_ServiceName__c, ADR_EndPoint__c FROM ADR_ResourcesService__mdt WHERE ADR_ServiceName__c=:strServiceName LIMIT 1].ADR_EndPoint__c;

        }catch(Exception e){
            strEndPoint = 'End point not found in Metadata';
            System.debug('Error:' + e.getMessage());
        }
        return strEndPoint;
    }
}
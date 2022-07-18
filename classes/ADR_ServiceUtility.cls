/***************************************************************************************
 * Name: ADR_ServiceUtility
 * Test: ADR_ServiceUtility_Test
 * Author: Valentín López Morales
 * Description: Retrieve the requiered information to webservice access
****************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change Description	
----------------------------------------------------------------------------------------
Valentín López	| 23-06-22 			| v0.1 				| Conection with User API
*/
public class ADR_ServiceUtility {
    /*
    * Method Name: getEndpoint
    * Description: Return the service name and endpoint 
    * Return Type: String
    * Parameters: string strServiceName
    */
    public static String getEndpoint(string strServiceName){
        string strEndPoint;
        try{
            strEndPoint=[SELECT Id, ADR_Service_Name__c, ADR_EndPoint__c FROM ADR_ResourcesServices__mdt WHERE ADR_Service_Name__c =: strServiceName LIMIT 1].ADR_EndPoint__c;
        }catch(Exception e){
            strEndPoint = 'Edpoint not found in Metadata';
            system.debug('Error: '+e.getMessage());
        }
        return strEndPoint;
    }
}
public class ADR_ServiceUtilityVehicle {
	 public static String getEndpoint(String strServiceName){
        String strEndPoint;
        try{
            strEndPoint=[SELECT Id, ADR_ServiceName__c, ADR_EndPoint__c FROM ADR_getVehicles__mdt WHERE ADR_ServiceName__c=:strServiceName LIMIT 1].ADR_EndPoint__c;

        }catch(Exception e){
            strEndPoint = 'End point not found in Metadata';
            System.debug('Error:' + e.getMessage());
        }
        return strEndPoint;
    }
}
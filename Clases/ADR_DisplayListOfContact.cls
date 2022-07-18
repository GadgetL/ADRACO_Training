public class ADR_DisplayListOfContact {
	@AuraEnabled
    public static List<Contact> fetchContactRecords(){
        
        return [SELECT Name, Phone, Email,Department, Languages__c FROM Contact LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Contact> fetchContactRecord(String strLastName, String strEmail){
        return [SELECT Id, Name, Phone, LastName, Email FROM Contact WHERE LastName =: strLastName or Email =: strEmail LIMIT 2 ];
    }
}
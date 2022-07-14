public class ADR_DisplayListOfContact {

    @AuraEnabled
    public static List<Contact> fetchContactRecords(){
        return [SELECT AccountId, Name, Email, Phone, Description FROM Contact order By createdDate ASC LIMIT 10];
    }
    
    @AuraEnabled
    public static List<Contact> fetchContactRecord(String strLastName, String strEmail){
        return [SELECT AccountId, Name, Email, Phone, Description FROM Contact WHERE LastName=:strLastName or Email=:strEmail order By createdDate ASC LIMIT 10];
    }
}
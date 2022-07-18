public class ADR_DisplayListOfContact {
	@AuraEnabled
    public static List<Contact> fetchContactRecords(){
     	system.debug('Ejecuntando método fetchContactRecords -controlador apex-');
        return [SELECT Id, Name, Phone, Email, Birthdate  FROM Contact WHERE Phone!='' ORDER BY CreatedDate LIMIT 10];   
    }
    
    @AuraEnabled
    public static List<Contact> fetchContactRecord(String strContactLastName, String strContactEmail){
     	system.debug('Ejecuntando método fetchContactRecord -controlador apex-');
        return [SELECT Id, LastName, Phone, Email, Birthdate FROM Contact WHERE LastName=:strContactLastName or Email=:strContactEmail LIMIT 2];   
    }
}
public class ADR_DisplayListofContact {
	
    @AuraEnabled
    public static List<Contact> fetchContactRecords(){
        system.debug('Ejecutando Metodo');
        return [SELECT Name,Email, Phone, Description FROM Contact LIMIT 10];
    }
    
     @AuraEnabled
    public static List<Contact> fetchContactRecord(string strContactLastName, string strContactEmail){
        system.debug('Ejecutando Metodo');
        return [SELECT Id,LastName,Email FROM Contact WHERE LastName=:strContactLastName OR Email=:strContactEmail  LIMIT 2];
    }
    
}
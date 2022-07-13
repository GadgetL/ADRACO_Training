public class ADR_DisplayListOfContact {
    @AuraEnabled
    public static List<Contact> fetchContactRecord(){
        system.debug('Ejecutando metodo');
        return [Select Name,LastName,Phone,Email,Department from Contact Order By createdDate ASC LIMIT 10];
        
    }
     @AuraEnabled
     public static List<Contact> fetchContactRecords(string strContactName,String strEmail){
        system.debug('Ejecutando metodo');
        return [Select Name,LastName,Phone,Email,Department from Contact WHERE LastName =:strContactName or Email =:strEmail Order By createdDate ASC LIMIT 2];
        
    }

}
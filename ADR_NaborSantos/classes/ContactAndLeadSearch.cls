public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(string strName){
		List<List<sObject>> searchList = [FIND :strName IN ALL FIELDS
                    RETURNING Contact(Name, FirstName,LastName,Department), Lead(Name, FirstName,LastName,Company)];
		Contact[] searchContacts = (Contact[])searchList[0];
		Lead[] searchLeads = (Lead[])searchList[1];       
		System.debug('Found the following contacts.');
        for (Contact objContact : searchContacts) {
            System.debug(objContact.Name + objContact.LastName + objContact.FirstName + ' - ' + objContact.Department);
        }
        System.debug('Found the following leads.');
        for (Lead objLead : searchLeads) {
            System.debug(objLead.Name + objLead.LastName + objLead.FirstName + ' - ' + objLead.Company);
        }
        
        return searchList;
    }
}
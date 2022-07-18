public class ContactSearch {
    public static list<Contact> searchForContacts(string strLastName, string strPostalCode){
        list <Contact> lstContact = [SELECT Id,Name 
                          FROM Contact WHERE LastName=:strLastName AND MailingPostalCode=:strPostalCode];
        return lstContact;
    }
}
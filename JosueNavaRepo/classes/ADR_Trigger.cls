public class ADR_Trigger {

    public Static void InsertAccount(){
        Account objAcc = new Account();
        objAcc.Name = 'Trigger Account before and after';
        objAcc.SLASerialNumber__c = '9995';
        INSERT objAcc;
        System.debug('::After:--->'+objAcc);
        
    }
    
    public Static void InsertContact(String strFirstName, String strLastName){
         Contact objCont = new Contact();
        objCont.AccountId = '0018a00001qVivsAAC';
        objCont.FirstName = strFirstName;
        objCont.LastName = strLastName;
        objCont.Email = 'Mary@adraco.com';
        System.debug('::Nuevo Contacto Registrado:--->'+objCont);
        List<Contact> lstContact = [SELECT id, FirstName, LastName, Department, Email, Phone FROM Contact WHERE AccountId=:'0018a00001qUvabAAC'];
        	for(Contact objContact: lstContact){
           		System.debug('Contacto en la lista-->'+objContact); 
        		}
        }

}
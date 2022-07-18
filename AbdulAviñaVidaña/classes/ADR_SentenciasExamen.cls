public class ADR_SentenciasExamen {
	
    public Static void InsertAccount(){
        Account objAcc = new Account();
        objAcc.Name = 'Trigger Account before and after';
        objAcc.SLASerialNumber__c = '9995';
        INSERT objAcc;
        System.debug('::After:--->'+objAcc);
        
    }
    
    
    
    public Static void InsertContact(String strFirstName, String strLastName){
        Contact objCont = new Contact();
        objCont.AccountId = '0018a00001qUvabAAC';
        objCont.FirstName = strFirstName;
        objCont.LastName = strLastName;
        objCont.Email = 'Mary@adraco.com';
        INSERT objCont;
        System.debug('::Nuevo Contacto Registrado:--->'+objCont);
     	List<Contact> lstContact = [SELECT id, FirstName, LastName, Email FROM Contact WHERE AccountId=:'0018a00001qUvabAAC'];
        for(Contact objContact: lstContact){
           System.debug('Contacto en la lista-->'+objContact); 
        }
        System.debug('Update List'); 
    }
    
    
    public Static void UpdateContact(String strDepto, String strMail, String strTel){
        String idAccount = '0018a00001qUvabAAC';
        List<Contact> lstContact =[SELECT id, Department, Email, Phone FROM Contact WHERE AccountId=:idAccount];
        Integer cont = 0;
        for(Contact objContact: lstContact){
            objContact.Department = strDepto+cont;
        	objContact.Email = strMail+cont;
        	objContact.Phone = strTel+cont;
            cont +=1;
        }
        
        UPDATE lstContact;
        System.debug('-Update-->'+lstContact);
        for(Contact objContact: lstContact){
           System.debug('Contacto en la lista-->'+objContact); 
        }
    }
    
    public Static void deleteContact(String strIdCont){
         Contact objContact =[SELECT id FROM Contact WHERE id=: strIdCont LIMIT 1];
        DELETE objContact;
    }
}
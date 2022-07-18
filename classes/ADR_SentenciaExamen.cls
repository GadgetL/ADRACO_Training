public class ADR_SentenciaExamen {
    
    Public static void insertAccount(){
        Account objAccount = new Account();
        objAccount.Name = 'Nueva Cuenta';
        System.debug('ANTES---- '+ objAccount);
        INSERT objAccount;
        System.debug('DESPUES----'+objAccount);
    }
    
    Public static void insertContact(){
         integer cont=0;
        list<Contact> lstContact=new list<Contact>();
        for( integer x=1; x<=4; x++){
            Contact objContact = new Contact();
            Account objAccount = new Account();
            objAccount.Id='001IY000002eRXCYA2';
            objContact.FirstName ='Rodrigo '+ cont;
            objContact.LastName ='Narvaez'+cont;
            objContact.Phone ='834'+cont;
            objContact.Description = 'Si' + cont;
            cont=cont+1;
            system.debug('ANTES---->'+objContact);
            lstContact.add(objContact);
            system.debug('DESPUES---->'+objContact);
        }
        INSERT lstContact;
    }
    
     public static void updatelstContact(){
        List<Contact> lstContact =[SELECT id,FirstName,Phone,Description FROM Contact WHERE Name = 'Rodrigo'LIMIT 2];
        integer cont=0;
        for(Contact objContact:lstContact){
            objContact.FirstName='Actualizado'+cont;
            objContact.Phone ='835'+cont;
            objContact.Description = 'NO' + cont;
            cont=cont+1;
        }
        system.debug('ANTES---->'+lstContact); 
        UPDATE lstContact;
       	system.debug('DESPUES---->'+lstContact); 
        
    }
    
     public static void deleteContact(){
        Contact objContact =[SELECT id,Name FROM Contact WHERE Name='Rodrigo' LIMIT 1];
        DELETE objContact;
    }
    
}
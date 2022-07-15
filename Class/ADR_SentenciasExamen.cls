/************************************************************************************************************
 * Name: ADR_SentenciasExamen
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Insert Contact with a relationship Account, Update and Delete Contact.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| Create method Delete
*/
public class ADR_SentenciasExamen {
    public static list<id> insertlstAccount(){
        list<Account> lstAcco = new list<Account>{
            new Account(Name = 'Test Account Insert trigger')
        };
        insert lstAcco;
        list<id> lstIdAcco = new list<id>();
        system.debug('Insert de Accounts: ' + lstAcco);
        for(Account objAcco:lstAcco){
            lstIdAcco.add(objAcco.Id);
        }
        return lstIdAcco;
    }
    
    public static list<Contact> InsertContact (list<id> lstIdAcco){
        //List<Account> lstAccon = [SELECT id, Name From Account WHERE Name = 'Test Account Insert1' OR Name ='Test AccountInsert 2'];
        list<Contact> lstContact = new list<Contact>{
            new Contact(FirstName = 'Test Insert',LastName = 'Contact0',AccountId = lstIdAcco.get(0),Email = 'testContact0@adr.com',Phone = '9283384270',Title = 'VP, Finance'),
            new Contact(FirstName = 'Test Insert',LastName = '1Contact',AccountId = lstIdAcco.get(1),Email = 'testContact1@adr.com',Phone = '9283384271',Title = 'VP, Finance 1')
        };
        insert lstContact; integer i=0;
        for(Contact objContac : lstContact){
            System.debug('-------Insert de Contacto-------------');
            system.debug('Name: '+ objContac.FirstName+' '+objContac.LastName+'\nidContact: '+objContac.Id+'\nAccountid : '+objContac.AccountId+'\nEmail: '
                         +objContac.Email+'Phone: '+objContac.Phone+'\nTitle: '+objContac.Title);
            i++;
        }
        return lstContact;       
    }
    
    public static id UpdateContact(list<Contact> lstCont){
        integer i=1; id idcont;
        List<Contact> lstContac2 = new list<Contact>();
        for(Contact objcont : lstCont){
            objCont.FirstName = 'Test Update';
            objCont.LastName = 'Contact '+ i;
            objCont.Email = 'testContact'+i+'@adr.com';
            objCont.Title = 'Dean of Administration';
            i++;
            lstContac2.add(objCont);
        }
        update lstContac2;
        System.debug('----------Update----------------');
        for(Contact objContact : lstContac2){
            System.debug('Contact name: '+objContact.FirstName+' '+objContact.LastName+'\nEmail: '+objContact.Email+'\nTitle: '+objContact.Title);
            idcont = objContact.Id;
        }
        return idcont;
    }
    public static void contactDelete(id contacto){
        Contact objContact = [SELECT id, Name, Phone, Email FROM Contact WHERE id=:contacto LIMIT 1];
        System.debug('---->delete: ' + objContact);
        delete objContact;
    }
    
}
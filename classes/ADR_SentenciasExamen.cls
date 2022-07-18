/*************************************************************************************** 
* Name: ADR_DisplayListOfAccount
* Test: ADR_SentenciasExamen_Test
* Author: Valentín López Morales 
* Description: Exam of sentences
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Connection of sentences with Triggers
*/ 
public class ADR_SentenciasExamen {
    
    /*
    * Method Name: insertAccount
    * Description: Insert Account 
    * Return Type: void 
    * Parameters: 
    */
    public static void insertAccount(){
        system.debug('Leyenda Insert Account');
        Account objAcc = new Account();
        objAcc.Name = 'Test Account Trigger';
        objAcc.Type = 'Technology Partner';
        
        INSERT objAcc;
        system.debug('Account: '+objAcc);
    }
    
    /*
    * Method Name: insertContact
    * Description: Displays object Contact before and after insertion
    * Return Type: void 
    * Parameters: 
    */
    public static void insertContact(){
        system.debug('Leyenda Insert Account');
        Account objAcc = [SELECT Id, Name FROM Account WHERE Name = 'Test Account Examen'];
        Id idAccount = objAcc.Id;
        Integer Cont = 0;
        List<Contact> lstContact = new List<Contact>{
            new Contact(FirstName='Pablo',LastName='López', Title='TestTitle', Phone = '55555', AccountId=idAccount),
            new Contact(FirstName='Sara',LastName='Martínez', Title='TestTitle', Phone = '6666', AccountId=idAccount)
        };
        INSERT lstContact;
        system.debug('Contacts: '+lstContact);
    }
    
    /*
    * Method Name: updateContact
    * Description: Displays object Contact before and after updated
    * Return Type: void
    * Parameters: 
    */
    public static void updateContact(){
        system.debug('Leyenda Update');
        Account objAccount = [SELECT Id, Name FROM Account WHERE Name = 'Test Account Examen'];
        Id idAccount = objAccount.Id;
        Integer cont=0;
        List<Contact> lstContact = [SELECT Id, FirstName, LastName, Title FROM Contact WHERE AccountId =: idAccount];
        system.debug('Contacts: '+lstContact);
        for(Contact objContact : lstContact){
            objContact.FirstName = 'Update FistName'+cont;
            objContact.LastName = 'Update LastName'+cont;
            objContact.Title = 'UpdateTitle';
            cont +=1;
        }
        UPDATE lstContact;
        System.debug('Contacts Update: '+lstContact);
    }
    
    /*
    * Method Name: deleteContact
    * Description: Displays object Contact before and after deleting
    * Return Type: void
    * Parameters: 
    */
    public static void deleteContact(Id idContact){
        Account objAccount = [SELECT Id, Name FROM Account WHERE Name = 'Test Account Examen'];
        Id idAccount = objAccount.Id;
        List<Contact> lstContact = [SELECT Id, FirstName, LastName, Email FROM Contact WHERE AccountId =: idAccount];
        system.debug('Leyenda Delete');
        Contact objContact = [SELECT Id, Name FROM Contact WHERE Id =: idContact];
        System.debug('Before delete contacts: '+lstContact);
        DELETE objContact;
        //Se realizo otra consulta para que se pudiera actualizar y mostrar la nueva lista de contactos
        //Después de eliminar un contacto
        List<Contact> lstCont = [SELECT Id, FirstName, LastName, Email FROM Contact WHERE AccountId =: idAccount];
        system.debug('After Delete Contacts: '+lstCont);
    }
}
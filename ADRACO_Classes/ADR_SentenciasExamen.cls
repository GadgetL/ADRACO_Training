public class ADR_SentenciasExamen {
    public static void deleteContact(Id idContact, Id idAccount){
        //Eliminar contacto
        Contact objContact = [SELECT Name FROM Contact WHERE Id = :idContact];
        DELETE objContact;
        
        //Obtener y mostrar lista de contactos de la cuenta para asegurar que se borro
        List<Contact> lstContacts = [SELECT LastName, FirstName, AssistantName, AccountId, Phone FROM Contact WHERE AccountId = :idAccount];
        system.debug('Lista de contactos despues de borrar------------');
        for(Contact objCont : lstContacts) {
            system.debug('ID de Contacto: ' + objCont.Id);
            system.debug('ID de Cuenta Relacionada: ' + objCont.AccountId);
            system.debug('Apellido: ' + objCont.LastName);
            system.debug('Primer Nombre: ' + objCont.FirstName);
            system.debug('Telefono: ' + objCont.Phone);
            system.debug('Nombre de Asistente: ' + objCont.AssistantName);
        }
    }
    
    public static void updateContact(Id idAccount) {
        //Actualiza contactos
        Integer intContador = 1;
        List<Contact> lstContacts = [SELECT LastName, FirstName, AssistantName, AccountId, Phone FROM Contact WHERE AccountId = :idAccount];
        for(Contact objContact : lstContacts) {
            objContact.LastName = 'Updated Last Name ' + intContador;
            objContact.FirstName = 'Updated First Name ' + intContador;
            objContact.AssistantName = 'Updated Assistant Name ' + intContador;
            intContador++;
        }
        
        UPDATE lstContacts;
        
        //Mostrar contactos actualizados
        system.debug('Lista de contactos despues de actualizar------------');
        for(Contact objContact : lstContacts) {
            system.debug('ID de Contacto: ' + objContact.Id);
            system.debug('ID de Cuenta Relacionada: ' + objContact.AccountId);
            system.debug('Apellido: ' + objContact.LastName);
            system.debug('Primer Nombre: ' + objContact.FirstName);
            system.debug('Telefono: ' + objContact.Phone);
            system.debug('Nombre de Asistente: ' + objContact.AssistantName);
        }
        
        //Eliminar un contacto
        deleteContact(lstContacts.get(0).Id, idAccount);
    }
    
    public static void insertContact() {
        //Insertar una cuenta nueva
        Account objAccount = new Account();
        objAccount.Name = 'Cuenta Examen';
        
        INSERT objAccount;
        
        //Mostrar cuenta nueva
        system.debug('Cuenta nueva: ' + objAccount);
        
        //Obtener ID de la cuenta
        Id idAccount = objAccount.Id;
        
        //Insertar dos contactos
        List<Contact> lstContacts = new List<Contact>();
        for(Integer i = 1; i <= 2; i++) {
            Contact objContact = new Contact();
            objContact.AccountId = idAccount;
            objContact.LastName = 'Last Name ' + i;
            objContact.FirstName = 'First Name ' + i;
            objContact.Phone = '722000000' + i;
            objContact.AssistantName = 'Asistant Name ' + i;
            lstContacts.add(objContact);
        }
        INSERT lstContacts;
        
        //Mostrar ambos contactos
        system.debug('Lista de contactos antes de actualizar------------');
        for(Contact objContact : lstContacts) {
            system.debug('ID de Contacto: ' + objContact.Id);
            system.debug('ID de Cuenta Relacionada: ' + objContact.AccountId);
            system.debug('Apellido: ' + objContact.LastName);
            system.debug('Primer Nombre: ' + objContact.FirstName);
            system.debug('Telefono: ' + objContact.Phone);
            system.debug('Nombre de Asistente: ' + objContact.AssistantName);
        }
        
        //Actualizar contactos
        updateContact(idAccount);
    }
}
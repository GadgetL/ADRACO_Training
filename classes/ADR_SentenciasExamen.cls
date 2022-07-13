public class ADR_SentenciasExamen {

    //obtimizar
    public static void insertAccount(){
        Account objAcc = new Account();
     	objAcc.Name = 'Account Insert 1 Tigger';
        INSERT objAcc;
        
        System.debug(':::--->' + objAcc);
        
       
        
        Contact objcont = new Contact();
        objcont.AccountId = objAcc.Id;
        objcont.FirstName = 'Jair';
        objcont.LastName = 'Perez';
        objcont.MobilePhone = '5512345678';
        objcont.Department = 'Ventas';
       
        INSERT objcont;
        
        Contact objcont2 = new Contact();
        objcont2.AccountId = objAcc.Id;
        objcont2.FirstName = 'Aaron';
        objcont2.LastName = 'Martinez';
        objcont2.MobilePhone = '5512345678';
        objcont2.Department = 'Contabilidad';
        INSERT objcont2;
        System.debug(':::--->' + objcont);
        System.debug(':::--->' + objcont2);
        
    }
    
    public static void UpdateContact(){
        Contact objContact = [SELECT Id,Name FROM Contact WHERE FirstName='Jair' LIMIT 1];
		
        objContact.LastName = 'Gonzalez';
        objContact.MobilePhone = '6645789456';
        objContact.Department = 'Contabilidad';
        update objContact;
        System.debug('UPDATE--->' + objContact);
        Contact objContact2 = [SELECT Id,Name FROM Contact WHERE FirstName='Aaron' LIMIT 1];
		
        objContact2.LastName = 'Jimenez';
        objContact2.MobilePhone = '6612345678';
        objContact2.Department = 'Ventas';
        update objContact2;
        System.debug('UPDATE--->' + objContact2);
        
       
    }
    public static void contactDelete(id idcontacto){
       
        Contact objContact = [SELECT id,Name FROM Contact WHERE Id=:idcontacto LIMIT 1];
        DELETE objContact;
        
        
        
    }
}
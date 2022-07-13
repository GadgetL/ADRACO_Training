public class ADR_Sentencias_Examen {
	public static String strAccountId=insertAccount();
    public static void insertContact(){
     integer cont=0;
        list<Contact> lstContact=new list<Contact>();
        for( integer x=1; x<=2; x++){
        	Contact objContact= new Contact();
            objContact.FirstName ='FirstName NO: '+ cont;
            objContact.LastName='LastName NO: '+cont;
            objContact.Phone ='785423123'+cont;
            objContact.Title='Ms. ';
            objContact.AccountId=strAccountId;
            cont=cont+1;
            lstContact.add(objContact);
            System.debug('Contact: ---->'+objContact);
        }
        INSERT lstContact;	
    }    
    public static String insertAccount(){
        
        Account objAcc= new Account();
        objAcc.Name ='Test Account Insert';
        objAcc.SLA__c='Silver';
        objAcc.SLASerialNumber__c ='7854';
        INSERT objAcc;
        return objAcc.Id;
    }
    
    public static void updatelstContact(){
        System.debug('Update');
        List<Contact> lstContact =[SELECT id,FirstName,LastName,Phone FROM Contact LIMIT 2];
        integer cont=0;
        for(Contact objContact:lstContact){
            objContact.FirstName='Update Contact FirstName '+cont;
            objContact.LastName='Update Contact LastName '+cont;
            objContact.Phone='u123413412'+cont;
            
            cont=cont+1;
        }
        System.debug('Contacts Updated: '+lstContact);
        UPDATE lstContact;
       
        
    }
    public static void deleteContact(Id IdContact){
        Contact objContact =[SELECT id,Name FROM Contact WHERE Id=:IdContact];
        System.debug('Contact: '+objContact);
        DELETE objContact;
    }
}
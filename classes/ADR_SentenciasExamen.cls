public class ADR_SentenciasExamen {
    
    public static void insertContact(){
        Account objAcc =  new Account();
        objAcc.Name ='Test Account Test 2';
        objAcc.SLA__c = 'Silver';
        objAcc.SLASerialNumber__c = '1234';
        System.debug('Before---->' + objAcc);
        INSERT objAcc;
        System.debug('After---->' + objAcc);    
        
        Contact objContac = [SELECT AccountId, Name FROM Contact LIMIT 1];
        
        
        Integer cont=3;
        list<Contact> lstContact = new list<Contact>();
        for (integer x=1; x<=2 ;x++){
            Contact objContact = new Contact();
            objContact.LastName = 'Last Name Test Trigger 2 ' + cont;
            objContact.FirstName = 'First Name Test Trigger 2 ' + cont;
            objContact.Department = 'Operation' + cont;
            objContact.Languages__c = 'Spanish' + cont;
            objContact.AccountId = objContac.AccountId;
            cont++;
            System.debug('Before-->' + objContact);
            lstContact.add(objContact);
            System.debug('After--->' + objContact);
        }
        INSERT lstContact;
    }
    
    public static void updateContact(){
        list<Contact> lstContact = [SELECT id, Account.Name, FirstName, Department, Languages__c FROM Contact LIMIT 2];
        
        integer cont =0;
        System.debug('Before Update' + lstContact );
        for(Contact objContact : lstContact){
            objContact.FirstName = 'Update First Name' + cont;
            objContact.Department = 'Update Department' + cont;
            objContact.Languages__c = 'Update Languages' + cont;
            cont++;
            
        }
        System.debug('After Update' + lstContact);
        UPDATE lstContact;
            

    }
    
    public static void contactDelete (Id idContact){
        Contact objContact = [SELECT Id, Name FROM Contact Where id=:idContact];
        System.debug(' delete:' + objContact);
        DELETE objContact;
        
    }
	
}
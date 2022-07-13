public class ADR_Trigger {
 public static Account insertAccount(){
        
        Account objAcc= new Account();
        objAcc.Name ='Test Account Insert';
        objAcc.SLA__c='Silver';
        objAcc.SLASerialNumber__c ='7854';
        INSERT objAcc;
     	return objAcc;
    }
 public static void insertContact(Id IdAccount){
        
        Contact objContact= new Contact();
     	objContact.AccountId=IdAccount;
        objContact.FirstName ='Contact';
        objContact.LastName='Update Trigger test';
        objContact.Email ='ContactTrigger@adr.com';
        INSERT objContact;
    }
}
public class ADR_Sentencias {
    public static void insertAccount(){
        Account objAcc= new Account();
//        objAcc.recordTypeId='01239000000QU5NAAW';
        objAcc.Name ='Test Account Insert';
        objAcc.SLA__c='Silver';
        objAcc.SLASerialNumber__c ='7854';
        system.debug('::Before:---->'+objAcc);
        INSERT objAcc;
        system.debug('::After:---->'+objAcc);
    }
    public static void insertLstAccount(){        
        integer cont=0;
        list<Account> lstAccount=new list<Account>();
        for( integer x=1; x<=4; x++){
        	Account objAccount= new Account();
  //          objAccount.recordTypeId='01239000000QU5NAAW';
            objAccount.Name ='Test Account Insert'+ cont;
            objAccount.SLA__c='Silver'+cont;
            objAccount.SLASerialNumber__c ='7854'+cont;
            cont=cont+1;
            system.debug('::Before:---->'+objAccount);
            lstAccount.add(objAccount);
            system.debug('::After:---->'+objAccount);
        }
        INSERT lstAccount;
    }
    
    public static void updateAccount(){
        Account objAccount =[SELECT id,Name FROM Account WHERE Name='Test Account Insert0' LIMIT 1];
        objAccount.Name ='Test update Account 0';
        update objAccount;
        system.debug('-UPDATE->'+objAccount);
        
    }
    
    public static void updatelstAccount(){
        List<Account> lstAccount =[SELECT id,Name FROM Account LIMIT 10000];
        integer cont=0;
        for(Account objAccount:lstAccount){
            objAccount.Name='Update Account '+cont;
            cont=cont+1;
        }
        UPDATE lstAccount;
       
        
    }
    public static void deleteAccount(){
        Account objAccount =[SELECT id,Name FROM Account WHERE Name='Test Account Insert3' LIMIT 1];
        DELETE objAccount;
    }
    /*
Trigger after insert,before insert ,after update before update,after delete before delete
*/
    
    
}
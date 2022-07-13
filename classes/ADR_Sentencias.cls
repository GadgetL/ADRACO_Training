public class ADR_Sentencias {
    public static void insertAccount(){
        Account objAcc = new Account();
     //   objAcc.recordTypeId = '';
        objAcc.Name = 'Test Account Insert';
        objAcc.SLA__c='Silver';
        objAcc.SLASerialNumber__c = '7854';
        
        
        System.debug('::Before--->' + objAcc);
        INSERT objAcc;
        System.debug('::After--->' + objAcc);
        
        
    }
    public static void insertLstAccount(){
        Integer cont = 0;
        list<Account> lstAccount = new list<Account>();
        for(integer x=1;x<=4;x++){
          Account objAcc = new Account();
     //   objAcc.recordTypeId = '';
        objAcc.Name = 'Test Account Insert';
        objAcc.SLA__c='Silver';
        objAcc.SLASerialNumber__c = '7854' + cont;
            cont=cont+1;
            
        System.debug('::Before--->' + objAcc);
            lstAccount.add(objAcc);
        System.debug('::After--->' + objAcc);
            
        }
    
        INSERT lstAccount;
       
    
        
        
    }
    public static void updateAccount(){
        Account objAccount = [SELECT Id,Name FROM Account WHERE Name='Test Account Inserta' LIMIT 1];
		objAccount.Name='Test update Account 0';
        update objAccount;
        System.debug('UPDATE--->' + objAccount);
    }
    public static void updatelstAccount(){
        List<Account> lstAccount = [SELECT id,Name FROM Account LIMIT 4];
        Integer cont = 0;
        for(Account objAccount:lstAccount){
            objAccount.Name='Update Account' + cont;
            cont=cont+1;
        }
        UPDATE lstAccount;
    }

}
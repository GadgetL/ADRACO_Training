public class ADR_Sentencias {
    public static void insertAccount(){
        Account objAcc =  new Account();
        objAcc.Name ='Test Account Insert';
        objAcc.SLA__c = 'Silver';
        objAcc.SLASerialNumber__c = '7854';
        System.debug('Before---->' + objAcc);
        INSERT objAcc;
        System.debug('After---->' + objAcc);
        
    }
    
    public static void insertLstAccount(){
        
        Integer cont=0;
        list<Account> lstAccount = new list<Account>();
        for(integer x=1; x <= 4 ; x++){
            Account objAccount =  new Account();
            objAccount.Name ='Test Account Insert' + cont;
            objAccount.SLA__c = 'Silver' + cont;
            objAccount.SLASerialNumber__c = '7854' + cont;
            cont++;
            System.debug('Before---->' + objAccount);
            lstAccount.add(objAccount);
            System.debug('After---->' + objAccount);
            
        }
       	INSERT lstAccount;
    }
    
    public static void updateAccount(){
        Account objAccount =[SELECT id, Name FROM Account Where NAME = 'Test Account Insert' LIMIT 1];
        objAccount.Name = 'Test update Account 0';
        update objAccount;
        System.debug('-Update->' + objAccount);
    }

    public static void updatelstAccount(){
        list <Account> lstAccount =[SELECT id, Name FROM Account  LIMIT 4];
        integer cont =0;
        for(Account objAccount : lstAccount){
        	objAccount.Name = ' Update Account ' + cont;
            cont++;
        }
        UPDATE lstAccount;
        
    }
    
    public static void deleteAccount(){
        Account objAccount =[SELECT id,Name FROM Account WHERE Name='Test Account Insert3' LIMIT 1];
        DELETE objAccount;
    }
}
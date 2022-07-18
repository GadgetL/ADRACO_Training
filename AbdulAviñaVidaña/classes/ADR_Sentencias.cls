public class ADR_Sentencias {

    public Static void insertAccount(){
        Account objAcc = new Account();
        //objAcc.recordTypeId= '132135jj';
        objAcc.Name = 'Test Account Insert';
        objAcc.SLA__c='Silver';
        objAcc.SLASerialNumber__c = '7854';
        System.debug('::Before:--->'+objAcc);
        INSERT objAcc;
        System.debug('::After:--->'+objAcc);
    }
    //para insertar objetos de forma masiva
    public Static void insertLstAccount(){
        Account objAcc = new Account();
        //objAcc.recordTypeId= '132135jj';
        objAcc.Name = 'Test Account Insert';
        objAcc.SLA__c='Silver';
        objAcc.SLASerialNumber__c = '7854';
        System.debug('::Before:--->'+objAcc);
        INSERT objAcc;
        System.debug('::After:--->'+objAcc);
        Integer cont = 0;
        List<Account> lstAccount = new List<Account>();
        for(Integer x=1; x<=4; x++){
            Account objAccount = new Account();
            //objAcc.recordTypeId= '132135jj';
        objAcc.Name = 'Test Account Insert'+cont;
        objAcc.SLA__c='Silver'+cont;
        objAcc.SLASerialNumber__c = '7854'+cont;
        cont = cont+1;
        System.debug('::Before:--->'+objAccount);
      	lstAccount.add(objAccount);
        System.debug('::After:--->'+objAccount);    
        }
        INSERT lstAccount;
    }
    //update de un objeto cuenta
    public Static void updateAccount(){
        Account objAccount =[SELECT id,Name FROM Account WHERE Name='Test Account Insert' LIMIT 1];
    	objAccount.Name ='Test update Account 0';
        update objAccount;
        System.debug('-Update-->'+objAccount);
    }
    
    //update de varios objetos cuenta
    public Static void updatelstAccount(){
        List<Account> lstAccount =[SELECT id,Name FROM Account LIMIT 4];
        Integer cont = 0;
        for(Account objAccount: lstAccount){
            objAccount.Name ='Update Account '+cont;
            cont = cont+1;
        }
        UPDATE lstAccount;
    }
    
    //delete de objeto
    public Static void deleteAccount(){
         Account objAccount =[SELECT id,Name FROM Account WHERE Name='Test Account Insert3' LIMIT 1];
        DELETE objAccount;
    }
    //eliminacion masiva
    public Static void deletelstAccount(){
         List<Account> lstAccount =[SELECT id,Name FROM Account LIMIT 4];
        Integer cont = 0;
        for(Account objAccount: lstAccount){
            objAccount.Name ='Update Account '+cont;
            cont = cont+1;
        }
        DELETE lstAccount;
    }
    
}
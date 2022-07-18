public class ADR_Trigger {
  public static void insertAccount(){
        Account objAcc = new Account();
        objAcc.Name = 'Paolo';
        objAcc.SLASerialNumber__c = '9998';
        INSERT objAcc;
        System.debug('::After:--->'+objAcc);        
    }

}
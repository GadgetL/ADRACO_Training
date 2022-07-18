public class ADR_Trigger {
	public static void insertAccount(){
        Account objAcc = new Account();
        objAcc.Name = 'Trigger Account before and after';
        objAcc.SLASerialNumber__c = '9995';
        INSERT objAcc;
        System.debug('::After:--->'+objAcc);
        
    }

}
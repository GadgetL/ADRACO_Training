public class ADR_Account {
	public static void insertAccount(){
        Account objAcc = new Account();
        objAcc.Name = 'Trigger Account before and after';
        objAcc.SLASerialNumber__c = '9995';
        INSERT objAcc;
        System.debug('::After:--->'+objAcc);
        
    }
    
    public static void insertContact(){
        Contact objCont = new Contact();
        objCont.FirstName = 'Trigger';
        objCont.LastName = 'TriggerLa';
        objCont.email = 'trigger@email.x';
        INSERT objCont;
        System.debug('::After:--->'+objCont);
        
    }
}
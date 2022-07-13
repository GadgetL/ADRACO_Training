public class ADR_Trigger {
    
    public static void InsertAccount(){
        Account objAcc = new Account();
        objAcc.Name = 'Trigger Account before and after';
        objAcc.SLASerialNumber__c = '9995';
        INSERT objAcc;
        System.debug('::After:--->'+objAcc);
    }
    public static void InsertContact(){
        Contact objCont = new Contact();
        objCont.FirstName = 'Jair';
        objCont.LastName = 'Martinez';
        objCont.Email = 'jair@gmail.com';
        INSERT objCont;
        System.debug('::After:--->'+objCont);
        
    }
    
    

}
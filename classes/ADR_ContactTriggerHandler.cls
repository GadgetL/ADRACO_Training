public class ADR_ContactTriggerHandler {
    
    
     public static void InsertContact(){
         
          Id idAcc = '0018a00001pcPUtAAM';
        Account objAccount = [SELECT Id,Name FROM Account WHERE Id=:idAcc LIMIT 1];
		objAccount.Name='Andrea';
        Contact objCont = new Contact();
        objCont.FirstName = 'Andrea';
        objCont.LastName = 'Martinez';
        objCont.Email = 'andrea@gmail.com';
        INSERT objCont;
        System.debug('::After:--->'+objCont);
        update objAccount;
         System.debug('::After:--->'+objAccount);
    }
   
    

}
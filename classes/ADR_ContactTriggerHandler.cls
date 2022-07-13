public class ADR_ContactTriggerHandler {
	public static void UpdateAccount(List<Contact> lstContact){

        System.debug('Contact List: '+lstContact);
        Set<Contact> setContact= new set<Contact>();
        for(Contact objContact: lstContact){
           setContact.add(objContact);
        }
        
       SetAccountValue(setContact);
    }
    public static void  SetAccountValue(Set<Contact> setContact){
    	
        for(Contact objContact: setContact){
            System.debug(objContact);
            for (Account objAcc : [SELECT ID, Name FROM Account WHERE Id=:objContact.AccountId]) {
            	 	System.debug(objAcc); 
           	    	objAcc.Name=objContact.FirstName+' '+objContact.LastName;
           			UPDATE objAcc;
               
            }
        }
      
    
    }
 
}
//
public class AccountHandler {
    public static Account insertNewAccount(string strAccountName){
        Account acct;
        try {
    		acct = new Account();
            acct.Name = strAccountName;
		    insert acct;
		} catch (DmlException e) {
		    System.debug('A DML exception has occurred: ' +
                e.getMessage());
            return null;
		}
        return acct;
    }
}
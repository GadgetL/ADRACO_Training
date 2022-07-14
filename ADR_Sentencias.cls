/************************************************************************************************************
 * Name: ADR_Sentencias
 * Class test: None
 * Autor: Francisco Reyes
 * Description: DML statements for creation and update for account object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 13-07-2022			 | v0.1				 | Create of methods
*/
public class ADR_Sentencias {
    public static void insertAccount(){
        Account objAcco = new Account();
        objAcco.Name = 'Test Account Insert';
        INSERT objAcco;
    }
    
    public static void insertlstAccount(integer x){
        Account objAcco = new Account();
        list<Account> lstAcco = new list<Account>();
        for(integer i=0; i<x; i++){
            objAcco.Name = 'Test Account Insert '+i;
            lstAcco.add(objAcco);
        }
        insert lstAcco;
    }
    
    public static void updateAccount(){
        Account objAcco = [SELECT id, Name FROM Account WHERE Name = 'Test Account Insert 0' LIMIT 1];
        objAcco.Name = 'Test update Account 0';
        update objAcco;
    }
    
    public static void updatelstAccount(){
        list<Account> lstAcco = [SELECT id, Name FROM Account LIMIT 4];
        integer i=1;
        for(Account objAcc : lstAcco){
        	objAcc.Name = 'Test update Account '+i; i++;
        }
        update lstAcco;
    }
    
    
    
}
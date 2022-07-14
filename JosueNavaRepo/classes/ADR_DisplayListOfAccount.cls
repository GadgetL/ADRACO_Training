/**
Metodo para listar Accounts en los auraComponents
 */
public class ADR_DisplayListOfAccount {
	
    //Retorna una lista de cuentas con un limite de 10
    @AuraEnabled
    public static List<Account> fetchAccountRecords(){
        System.debug('Ejecutando metodo fetchAccountRecords');
        return [SELECT Name, Rating, Phone, Website, Description FROM Account order By createdDate ASC LIMIT 10];
    }
    
    //retorna una lista de cuentas realizando una busqueda por nombre
    @AuraEnabled
    public static List<Account> fetchAccountRecord(String strAccountName){
        System.debug('Ejecutando metodo fetchAccountRecord');
        return [SELECT Name, Rating, Phone, Website, Description FROM Account WHERE Name=:strAccountName order By createdDate ASC LIMIT 1];
    }
}
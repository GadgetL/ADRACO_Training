public class ADR_Colecciones {
/*
Map: 
Map<Key,Value> mapData = new Map<Key,Value>();
get(Key)

*/
    Public static void mapAccountId(){
        //ID cyenta
        //Nombre de la cuenta
        Map<id,String> mapIdAccount = new Map<id,String>();
        
        Account objAccount=[SELECT id,name FROM account LIMIT 1];
        System.debug('--->' + objAccount);
        MapIdAccount.put(objAccount.id,objAccount.Name);
        System.debug('--->' + MapIdAccount);        
        System.debug('--->'+mapIdAccount.get(objAccount.id));
    }
    
    Public static void mapContact(){
        Map<id,String> mapIdContact = new Map<id,String>();
        
        Contact objContact=[SELECT id,name FROM contact LIMIT 1];
        System.debug('--->' + objContact);
		MapIdContact.put(objContact.id,objContact.Name);
        System.debug('--->' + MapIdContact);        
        System.debug('--->' + MapIdContact.get(objContact.id));
    }
    
    public static void mapContactRelatedAccount(id idAccount){
       //List<Account> lstAccount = [Select id, name, (SELECT Id, Name, email, AccountId FROM Contacts) from Account];
        List<Contact> lstContact = [SELECT id,Name FROM contact WHERE Accountid=:idAccount];
        map<id,List<Contact>> mapContactRelatedAcc = new map<id,List<Contact>>();
        mapContactRelatedAcc.put(idAccount,lstContact);
        System.debug('--->'+ mapContactRelatedAcc);
        for(Id idAcc : mapContactRelatedAcc.keySet()){
            System.debug('Key->' + idAcc);
            System.debug('Value->' + mapContactRelatedAcc.get(idAcc));
            for(Contact objContact : mapContactRelatedAcc.get(idAcc)){
                System.debug('Contact' + objContact.id);
                System.debug('Contact' + objContact.Name);
            }
        }
    }
    
    public static void mapOpportunity(){
       map<id,List<Opportunity>> mapList = new map<id,List<Opportunity>>();
       Opportunity objOpportunity=[SELECT id,name FROM Opportunity LIMIT 3];
       System.debug('--->' + objOpportunity);
       //MapIdOpportunity.put(objOpportunity.id,objOpportunity.Name);
       //System.debug('--->' + MapIdOpportunity);
       System.debug('--->'+mapList.get(objOpportunity.id)); 
    }
    
}
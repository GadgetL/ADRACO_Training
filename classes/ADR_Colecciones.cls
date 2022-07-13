public class ADR_Colecciones {
/*
Map:
Map<Key,Value> mapData=new Map<Key,Value<();
Agregar valores
NombreMapa.put(Key, value);
get(key)
map.put(5,'manzana');
Map<Id,Contacto>
map.put<objAccount.Id,objContact>
map<id,List<Contacto>
map.put(objAcc.id,lstContact);

*/
    Public static void mapAccountId(){
        //Id Cuenta
        //Nombre de la cuenta
        //map<key,value>
    	Map<Id,String> mapIdAccount= new Map<Id,String>();
        Account objAccount=[SELECT id,name FROM Account LIMIT 1];
        System.debug('--->'+objAccount);
        mapIdAccount.put(objAccount.Id,objAccount.Name);
        System.debug('Map--->'+mapIdAccount);
        System.debug('Account Name: '+mapIdAccount.get(objAccount.Id));//map.get(key)= value
    }
    Public static void mapContactId(){
        //Id Contact
        //Nombre del contacto
        //map<key,value>
    	Map<Id,String> mapIdContact= new Map<Id,String>();
        Contact objContact=[SELECT id,name FROM Contact LIMIT 1];
        System.debug('--->'+objContact);
        mapIdContact.put(objContact.Id,objContact.Name);
        System.debug('Map--->'+mapIdContact);
        System.debug('Contact Name: '+mapIdContact.get(objContact.Id));//map.get(key)= value
    }
    Public static void mapContactsRelatedAccount(Id idAccount){
//        List<Account> lstAccount = [SELECT id, name,(Select Id,Name,email, AccountId FROM Contacts) FROM Account];
        List<Contact> lstContact = [SELECT Id, name FROM Contact WHERE AccountId=:idAccount];
        map<Id, List<Contact>> mapContactRelatAcc= new  map<Id,List<Contact>>();
        mapContactRelatAcc.put(idAccount,lstContact);
        System.debug('--->'+mapContactRelatAcc);
        for(Id idAcc : mapContactRelatAcc.keySet()){
            System.debug('Key--->'+idAcc);
            System.debug('Value--->'+mapContactRelatAcc.get(idAcc));
            for(Contact objContact: mapContactRelatAcc.get(idAcc)){
                System.debug('Contact ID: '+objContact.Id);
                System.debug('Contact Name: '+objContact.Name);
            }
        }
    }
    Public static void mapOpportunitiesRelatedAccount(Id idAccount){
//      List<Opportunity> lstOpportunity = [SELECT id, name,(Select Id,Name FROM Opportunity) FROM Account];
        List<Opportunity> lstOpportunities = [SELECT Id, name FROM Opportunity WHERE AccountId=:idAccount];
        map<Id, List<Opportunity>> mapOpportRelatAcc= new  map<Id,List<Opportunity>>();
        mapOpportRelatAcc.put(idAccount,lstOpportunities);
        System.debug('Map--->'+mapOpportRelatAcc);
        for(Id idAcc : mapOpportRelatAcc.keySet()){
            System.debug('Key--->'+idAcc);
            System.debug('Value--->'+mapOpportRelatAcc.get(idAcc));
            for(Opportunity objOpportunities: mapOpportRelatAcc.get(idAcc)){
                System.debug('Opportunity ID: '+objOpportunities.Id);
                System.debug('Opportunity Name: '+objOpportunities.Name);
            }
        }
     
            
    }
    public static void mapContactOpportunityAccount(Id idAccount){
        Contact objContact=[SELECT Id, name FROM Contact WHERE AccountId=:idAccount];
 //       List<Contact> lstContact = [SELECT Id, name FROM Contact WHERE AccountId=:idAccount];
 		
//        map<Id, List<Contact>> mapContactRelatAcc= new  map<Id,List<Contact>>();
  //      System.debug('Contactos pertenecen a la cuenta--->'+lstContact);
    //    mapContactRelatAcc.put(idAccount,lstContact);
        List<Opportunity> lstOpportunity = [SELECT Id, name FROM Opportunity WHERE AccountId=:idAccount];
        Map<Id,List<Opportunity>> mapOpportunity= new Map<Id,List<Opportunity>>();
        mapOpportunity.put(IdAccount,lstOpportunity);
        
        //System.debug('Oportunidades pertenecen a la cuenta--->'+lstOpportunity);
        Map<Id,map<Id,List<Opportunity>>> mapOpportunityAccount= new Map<Id,map<Id,List<Opportunity>>>();
		mapOpportunityAccount.put(objContact.Id,mapOpportunity);
        System.debug('Map--->'+mapOpportunityAccount);
        for(Id idContact:mapOpportunityAccount.keySet()){
            System.debug('ID Contacto: '+mapOpportunityAccount.get(idContact));
            for(id idAcc: mapOpportunityAccount.get(idContact).keySet()){
                System.debug('ID Cuenta: '+ idAcc);
              //  System.debug('Opportunidades relacionadas a la cuenta'+ mapOpportunityAccount.get(idContact).get(idAcc));
                for(Opportunity objOpportunity:mapOpportunityAccount.get(idContact).get(idAcc)){
                    System.debug('ID: '+ objOpportunity.Id);
                    System.debug('Name: '+ objOpportunity.Name);

                }
            }
            
        }
 /*       for(Opportunity objOpportunity:lstOpportunity){
            for(Contact objContact: mapContactRelatAcc.get(objOpportunity.Id)){
                System.debug('Contacto--->'+objContact);
                
            }
        }
*/

    //    map<Id, map<Id,List<Contact>> mapOpportunity new  map<Id, map<Id,List<Contact>();
        
    }
}
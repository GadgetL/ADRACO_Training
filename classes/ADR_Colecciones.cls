public class ADR_Colecciones {
/*
Map:
Map<Key,value>  mapData = new Map<key,value>();
Map<Integer,String>
mapData.put(5, 'manzana');

map<Id,Contacto>
map.put<objAccount.Id,objContact>

map<id, List<contacto>>
map.put(objAccount.id,lstContact)

Agregar valores
mapData.put(key, value);
get(key);
*/
    public static void mapAccountId(){
        //Id cuenta
        //Nombre cuenta
        //map<key,value>
        Map <Id, String> mapIdAccount= new Map<Id,String>();
        
        Account objAccount = [Select Id, Name FROM Account LIMIT 1];
        System.debug('-->' + objAccount);
        mapIdAccount.put(objAccount.Id, objAccount.Name);
        system.debug('-->' + mapIdAccount);
        System.debug('--> Account Name:' + mapIdAccount.get(objAccount.Id)); //map.get(key) = value
    }
    
    //Id contacto
    
    public static void mapContactId(){
        map<Id,String> mapIdContact = new Map<Id,String>();
        
        Contact objContact = [Select Id, Name FROM Contact LIMIT 1];
        mapIdContact.put(objContact.Id, objContact.Name);
        System.debug('--> Contact Name: ' + mapIdContact.get(objContact.Id));
    }
    
    public static void mapContactsRelatedAccount(Id idAccount){
        //List<Account> lstAccount = [SELECT id, name, (Select Id, Name, email, AccountId FROM Contacts) FROM Account];
        //Map<Id,List> mapLstAccount = new Map<Id,List>();
        List<Contact> lstContact =[SELECT Id, Name FROM Contact WHERE AccountId =:idAccount];
        Map<Id,List<Contact>> mapContactRelatAcc = new Map<Id,List<Contact>>();
        mapContactRelatAcc.put(idAccount, lstContact);
        System.debug('-->' + mapContactRelatAcc);
        for(Id idAcc :  mapContactRelatAcc.keySet()){
            System.debug('-key-->' + idAcc);
            System.debug('-value-->' + mapContactRelatAcc.get(idAccount));
            for(Contact objContact : mapContactRelatAcc.get(idAccount)){
                System.debug('Contact Id:' + objContact.Id);
                System.debug('Contact Name:' + objContact.Name);
            }
        }
    }
    
    public static void mapOpportunitiesRelatedAccount(Id idAccount){
        List<Opportunity> lstOpportunities =[SELECT Id, Name FROM Opportunity WHERE AccountId =:idAccount];
        Map<Id,List<Opportunity>> mapOpportunityRelatAcc = new Map<Id,List<Opportunity>>();
        mapOpportunityRelatAcc.put(idAccount, lstOpportunities);
        System.debug('-->' + mapOpportunityRelatAcc);
        for(Id idAcc: mapOpportunityRelatAcc.keySet()){
            System.debug('\n-key-->' + idAcc +'\n-value-->' + mapOpportunityRelatAcc.get(idAccount));
            for(Opportunity objOpportunity : mapOpportunityRelatAcc.get(idAccount)){
                System.debug('\nOpportunity Id:' + objOpportunity.Id + '\nOpportunity Name:' + objOpportunity.Name);
            }
        }
    }
    
    public static void mapContactOpportunityAccount(Id idAccount){
        
        //map<IdManager(Contacto),map<idAccount
        //Se declara un objeto de Tipo Contact en el cual va a tener el registro dependiendo del id de la Cuenta
        Contact objContact = [SELECT Id, Name FROM Contact WHERE AccountId=:idAccount];
        //Se declara una lista de tipo Oportunidad en el cual va a traer una lista del id y nombre de las oportunidades
        //que corresponde al id de la cuenta
        List<Opportunity> lstOpportunities =[SELECT Id, Name,AccountId FROM Opportunity WHERE AccountId =:idAccount];
		//Se declara un mapa, de key de tipo Id de la cuenta y de value de tipo lista de Oportunidad
        Map<Id,List<Opportunity>> mapAccountOpportunity = new Map<Id,List<Opportunity>>();
        //Agregamos el Id account y la lista de oportunidades
        mapAccountOpportunity.put(idAccount,lstOpportunities);
        System.debug('Id Contact: ' + objContact.Id + ' Name: ' + objContact.Name + ' Id Account: ' + idAccount);
        System.debug('Mapa de oportunidades: \n' +mapAccountOpportunity);
         System.debug('keyset: \n' +mapAccountOpportunity.keyset());
        
        //Se declara un mapa, de key de tipo Id del contacto y de value de un mapa 
        Map<Id,Map<Id,List<Opportunity>>> mapOpportunityAccount = new Map<Id,Map<Id,List<Opportunity>>>();
        //Agregamos al mapa el Id del contacto y el mapa 
		mapOpportunityAccount.put(objContact.id, mapAccountOpportunity);
        System.debug('-->'+ mapOpportunityAccount);
        System.debug('keyset:' +mapOpportunityAccount.keyset());
        
        for (Id idContact:mapOpportunityAccount.keyset()){
            System.debug('key:' + idContact + ' value:' + mapOpportunityAccount.get(idContact));
            System.debug('keyset:' + mapOpportunityAccount.get(idContact).keyset());
            for(Id idAcc:mapOpportunityAccount.get(idContact).keyset()){
                System.debug('Id cuenta:' + idAcc);
                System.debug('Lista de oportunidades:');
                System.debug('Lista de oportunidades relacionadas a la cuenta -->' + mapOpportunityAccount.get(idContact).get(idAcc));
                for(Opportunity objOpportunity: mapOpportunityAccount.get(idContact).get(idAcc) ){
                    System.debug('-->Id:' + objOpportunity.Id);
                    System.debug('-->Name:' + objOpportunity.Name);
                }
            }
        }
    }
}
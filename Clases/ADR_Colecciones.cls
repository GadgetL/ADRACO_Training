public class ADR_Colecciones {
    
    Public static void mapAccountId(){
        //Id cuenta
        //Nombre de la cuenta
        // map<key,value>
        Map<Id,String> mapIdAccount = new Map<Id,String>();
        Account objAccount=[SELECT id,name FROM Account LIMIT 1];
        System.debug('--->'+objAccount);
        mapIdAccount.put(objAccount.Id,objAccount.Name);
        system.debug('--->'+mapIdAccount);
        system.debug('-->Account Name:'+mapIdAccount.get(objAccount.Id)); // map.get(key) = value
    }
    
    public static void mapContactsRelatedAccount( Id idAccount){
        //List<Account> lstAccount =[Select id, name, (SELECT Id, Name, email, AccountId FROM Contacts) from Account];
        List<Contact> lstContact =[SELECT Id, Name FROM Contact WHERE AccountId =:idAccount];
        map<Id,List<Contact>> mapContactRelatAcc= new map<Id,List<Contact>>();
        mapContactRelatAcc.put(idAccount,lstContact);
        system.debug('-->'+mapContactRelatAcc);
        for(Id idAcc :mapContactRelatAcc.keySet()){
            system.debug('-Key:->'+idAcc);
            system.debug('-Value:->'+mapContactRelatAcc.get(idAcc));
            for(Contact objContact :mapContactRelatAcc.get(idAcc)){
                system.debug('Contact Id:'+objContact.Id);
                system.debug('Contact Name:'+objContact.Name);
            }
        }
    }
    
    Public static void mapContactOpportunityAccount(Id idAccount){
         //map<IdManager(Contacto),map<idAccount,lista de opportunidades>
         //Instancia -- Creacion de nuestro mapa
         //map<Key,value>
         map<String,String> mapFrutas = new map<String,String>();
        system.debug('-Mapa->'+mapFrutas);
        mapFrutas.put('Rojo','Manzana');
        mapFrutas.put('Morado','Uva');
        system.debug('-Mapa after put->'+mapFrutas);
        system.debug('-Mapa get->'+mapFrutas.get('Morado'));
         system.debug('-Mapa key set->'+mapFrutas.keyset());
       /* Contact objContact =[SELECT Id, Name FROM Contact WHERE AccountId =:idAccount LIMIT 1];
        
        
        List<Opportunity> lstOpportunity =[SELECT id,Name,AccountId FROM opportunity WHERE AccountId=:idAccount];
        Map<id,List<Opportunity>> mapAccountOpportunity = new Map<id,List<Opportunity>>();
        mapAccountOpportunity.put(idAccount,lstOpportunity);
        
        map<Id,map<id,List<Opportunity>>> mapOpportunityAccount = new map<Id,map<id,List<Opportunity>>>();
        mapOpportunityAccount.put(objContact.id,mapAccountOpportunity);
        system.debug('--->'+mapOpportunityAccount);
        for(Id idContact :mapOpportunityAccount.keySet()){
            system.debug('->Id Contacto: '+idContact);
            for(Id idAcc:mapOpportunityAccount.get(idContact).keyset()){
                system.debug('--->id Cuenta : '+idAcc);
                
                system.debug('Lista de Opportunidades: :');
                //system.debug('Opportunidades relacionadas a la cuenta--->'+mapOpportunityAccount.get(idContact).get(idAcc)); 
                for(Opportunity objOpportunity:mapOpportunityAccount.get(idContact).get(idAcc)){
                    system.debug('---->Id: '+objOpportunity.Id);
                	system.debug('---->Name: '+objOpportunity.Name);
                }
            }
        }*/
        
    }
        
}
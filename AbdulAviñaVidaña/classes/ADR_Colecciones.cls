public class ADR_Colecciones {

    public static void mapAccountId(){
        //id cuenta
        //nombre de la cuenta
        Map<Id,String> mapIdAccount = new Map<Id,String>();
        
        //objeto de tipo cuenta
        Account objAccount =[SELECT id, name FROM Account LIMIT 1];
        System.debug('---->'+objAccount);
        mapIdAccount.put(objAccount.Id,objAccount.Name);
        System.debug('---->'+mapIdAccount);
        System.debug('---->'+mapIdAccount.get(objAccount.Id));
    }
    
    public static void mapContactId(){
        //id contacto y nombre contacto
        Map<Id,String> mapIdContact = new Map<Id,String>();
        Contact objContact = [SELECT id, name FROM Contact LIMIT 1];
        System.debug('---->'+objContact);
        mapIdContact.put(objContact.Id,objContact.Name);
        System.debug('---->'+mapIdContact);
        System.debug('---->'+mapIdContact.get(objContact.Id));
    }
    
    public static void mapContactsRelatedAccount(Id idAccount){
        //List<Account> lstAccount =[SELECT ID, NAME, (SELECT Id, Name, email, AccountId FROM Contacts) from Account];
   		List<Contact> lstContact =[SELECT Id, Name FROM Contact WHERE AccountId=: idAccount lIMIT 1]; 
        map<Id,List<Contact>> mapContactRelatAcc = new map<Id,List<Contact>>();
        mapContactRelatAcc.put(idAccount, lstContact);
        System.debug('--->'+mapContactRelatAcc);
        for(Id idAcc: mapContactRelatAcc.keySet()){
            System.debug('-->'+idAcc);
            System.debug('value-->'+mapContactRelatAcc.get(idAcc));
            //muestra datos de contacto
            for(Contact objContact:mapContactRelatAcc.get(idAcc)){
                //para ver los datos
                System.debug('Contact: '+objContact);
                //por atributos separados
                System.debug('Contact Id: '+objContact.Id);
                System.debug('Contact Nombre: '+objContact.Name);
            }
        }
    }
    public static void mapOpportunity(Id idAccount){      
        List<Opportunity> lstOpportunity =[SELECT Id, Name FROM Opportunity WHERE AccountId=: idAccount];        
        map<Id,List<Opportunity>> mapOpportunities = new map<Id,List<Opportunity>>();
        mapOpportunities.put(idAccount, lstOpportunity);
        System.debug('--->'+mapOpportunities);
        for(Id idAcc: mapOpportunities.keySet()){
            System.debug('-->'+idAcc);
            System.debug('value-->'+mapOpportunities.get(idAcc));
            //muestra datos de contacto
            for(Opportunity objOpportunity:mapOpportunities.get(idAcc)){
                //para ver los datos
                System.debug('Opportunity: '+objOpportunity);
                //por atributos separados
                System.debug('Opportunity Id: '+objOpportunity.Id);
                System.debug('Opportunity Name: '+objOpportunity.Name);
            }
        }

    }
    //mapa de mapas
    public static void mapContactOpportunityAccount(id idAccount){
       Contact objContact =[SELECT Id,Name FROM Contact WHERE AccountId =:idAccount LIMIT 1];
        
        List<Opportunity> lstOpportunity = [SELECT id,name,AccountId FROM opportunity WHERE AccountId=:idAccount];
        Map<id,List<Opportunity>> mapAccountOpportunity = new Map<id,List<Opportunity>>();
        mapAccountOpportunity.put(idAccount,lstOpportunity);
        
        map<Id,map<id,List<Opportunity>>> mapOpportunityAccount = new map<Id,map<id,List<Opportunity>>>();
        mapOpportunityAccount.put(objContact.id,mapAccountOpportunity);
        system.debug('--->'+mapOpportunityAccount);
        for(Id idContact :mapOpportunityAccount.keySet()){
            system.debug('--->id Contacto:'+idContact);            
            for(Id idAcc:mapOpportunityAccount.get(idContact).keyset()){
                system.debug('--->id Cuenta'+idAcc);
                 
                System.debug('lISTA DE OPORTUNIDADES');
                System.debug('Oportunidades relacionadas a la cuenta:');
                for(Opportunity objOpportunity:mapOpportunityAccount.get(idContact).get(idAcc)){
                    system.debug('---->Id: '+objOpportunity.Id);
                	system.debug('---->Name: '+objOpportunity.Name);
                }
            }
        }
    }
}
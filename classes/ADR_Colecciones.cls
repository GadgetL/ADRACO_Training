public class ADR_Colecciones {

    
    public static void mapAccountId(){
        //id cuenta
        //nombre de la cuenta
        //mapkey<key,value>
        
        Map<Id,String> mapIdAccount = new Map<Id,String>();
        Account objAccount =[SELECT id,name from Account LIMIT 1];
        
        System.debug('------>' + objAccount);
        mapIdAccount.put(objAccount.id,objAccount.Name);
        System.debug('------>' + mapIdAccount);
       ///map.get(key) - value
         System.debug('------>Account Name' + mapIdAccount.get(objAccount.id));
        
        
    }
     public static void mapContactId(){
        
        Map<Id,String> mapIdContact = new Map<Id,String>();
        Contact objContact =[SELECT id,name from Contact LIMIT 1];
        mapIdContact.put(objContact.id,objContact.Name);
        System.debug('------>' + mapIdContact);
         System.debug('------>Contact Name' + mapIdContact.get(objContact.id));
        
        
    }
    public static void mapContacsRelatedAccount(id idAccount){
       // List<Account> lstAccount = [Select id,name, (SELECT ID, Name,email,AccountId FROM Contacts) from Account];
       // 
        List<Contact> lstContact = [SELECT id,name FROM Contact WHERE AccountId =:idAccount];
        map<Id,List<Contact>> mapContactRelatAcc = new map<Id,List<Contact>>();
        mapContactRelatAcc.put(idAccount,lstContact);
        System.debug('------>' + mapContactRelatAcc);
        for(ID idAcc : mapContactRelatAcc.keySet()){
            System.debug('key------>' + idAcc);
            System.debug('------>' + mapContactRelatAcc.get(idAcc));
            for (Contact objContact :mapContactRelatAcc.get(idAcc)){
                System.debug('Contact id' + objContact.Id);
                System.debug('Contact Name' + objContact.Name);
                
            }
        }
        
        
        
    }
    
        public static void mapOpportunitiesAccount(id idAccount){
      
            List<Opportunity> lstOpportunities = [SELECT Id,Name FROM Opportunity WHERE AccountId =:idAccount];
             System.debug(lstOpportunities);
        map<Id,List<Opportunity>> mapOpportunities = new map<Id,List<Opportunity>>();
            mapOpportunities.put(idAccount,lstOpportunities);
           
        for(ID idAcc : mapOpportunities.keySet()){
            System.debug('key------>' + idAcc);
            System.debug('------>' + mapOpportunities.get(idAcc));
            for (Opportunity objOpportunity :mapOpportunities.get(idAcc)){
                System.debug('Opportunity id' + objOpportunity.Id);
                System.debug('Opportunity Name' + objOpportunity.Name);
                
            }
        }
        
    }
    
    public static void mapContactOpportunityAccount(id idAccount){
        Contact objContact = [SELECT id,Name FROM Contact WHERE AccountId =:idAccount LIMIT 1];
    	
        List<Opportunity> lstOpportunity = [SELECT Id,Name,AccountId FROM Opportunity WHERE AccountId =:idAccount];
      	map<id,List<Opportunity>> mapAccountOpportunity = new map<id,List<Opportunity>>(); 
        mapAccountOpportunity.put(idAccount,lstOpportunity);
        
        Map<id,map<id,List<Opportunity>>> mapOpportunityAccount = new map<id,map<id,List<Opportunity>>>();  
    	mapOpportunityAccount.put(objContact.id,mapAccountOpportunity);
        System.debug('----->' + mapOpportunityAccount);
        for(id idContact: mapOpportunityAccount.keySet()){
           System.debug('----->' + mapOpportunityAccount.get(idContact));
            for(id idAcc:mapOpportunityAccount.get(idContact).keySet()){
                System.debug('----->id Cuenta' + idAcc);
                System.debug('Lista de oportunidades: :');
                
                //System.debug('Opportunidades relacionadas a la cuenta' + mapOpportunityAccount.get(idContact).get(idAcc));
                for(Opportunity objOpportunity:mapOpportunityAccount.get(idContact).get(idAcc)){
                    System.debug('----->id' + objOpportunity.Id);
                    System.debug('----->Name' + objOpportunity.Name);
                }
            }
        }
    
    }
    
}
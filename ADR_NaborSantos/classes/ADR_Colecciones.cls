public class ADR_Colecciones {
	/*
	 * Map<key, value> mapData = new Map<key, value>();
	 * add value --> mapName.put(key, value);
	 * get value --> mapaName.get(key);
	*/
    
    public static void mapAccountId(){
        //AccountId, AccountName
		Map<Id, String> mapIdAccount = new Map<Id, String>();
        
        Account objAccount = [SELECT Id, Name FROM Account LIMIT 1];
		System.debug('---> '+ objAccount);    
        
        mapIdAccount.put(objAccount.Id, objAccount.Name);
        System.debug('map--> ' + mapIdAccount);
        
        System.debug('AccountId--> ' + mapIdAccount.get(objAccount.Id));
    }
    
    public static void mapContactId(){
        //ContactId, ContactName
		Map<Id, String> mapContact = new Map<Id, String>();
        Contact objContact = [SELECT Id, Name FROM Contact LIMIT 1];        
        mapContact.put(objContact.Id, objContact.Name);
        System.debug('map--> ' + mapContact);
        System.debug('Contact info:\n ' + mapContact.get(objContact.Id));
    }
    	
    public static void mapContactRelatedAccount(Id idAccount){
        //List<Account> lstAccount = [SELECT Id, Name, (SELECT Id, Name, email, AccountId FROM Contacts) FROM Account];
        List<Contact> lstContact = [SELECT Id, Name FROM Contact WHERE AccountId =: idAccount];
        Map<Id, List<Contact>> mapContactRelatedAcc = new Map<Id, List<Contact>>();
        mapContactRelatedAcc.put(idAccount, lstContact);
        System.debug(mapContactRelatedAcc);
        
        for(Id idAcc : mapContactRelatedAcc.keySet()){
            System.debug('key --> ' + idAcc);
            System.debug('value --> ' + mapContactRelatedAcc.get(idAcc));
            for(Contact objContact : mapContactRelatedAcc.get(idAcc)){
                System.debug('contact Id --> ' + objContact.Id);
                System.debug('contact Name --> ' + objContact.Name);
            }
        }
    }
    
    public static void mapAccountOpportunities(Id idAccount){
        List<Opportunity> ltsOpportunity = [SELECT Id, Name FROM Opportunity WHERE AccountId =: idAccount];
        Map<Id, List<Opportunity>> mapAccOpp = new Map<Id, List<Opportunity>>();
        mapAccOpp.put(idAccount, ltsOpportunity);
        System.debug(mapAccOpp);
        
        for(Id idAcc : mapAccOpp.keySet()){
            System.debug('key --> ' + idAcc);
            System.debug('value --> ' + mapAccOpp.get(idAcc));
            for(Opportunity objOpp : mapAccOpp.get(idAcc)){
                System.debug('Opportunity Id --> ' + objOpp.Id);
                System.debug('Opportunity Name --> ' + objOpp.Name);
            }
        }
    }
    
    public static void mapAccountOpportunities(){
        List<Account> lstAccount = [SELECT Id, Name, (SELECT Id, Name FROM Opportunities) FROM Account LIMIT 3];
        Map<Id, List<Opportunity>> mapAccOpp = new Map<Id, List<Opportunity>>();
        for(Account objAcc : lstAccount){
            mapAccOpp.put(objAcc.Id, objAcc.Opportunities);
        }        
        system.debug('Map<Id, List<Opportunity>> :\n' + mapAccOpp);
        
        for(Id idAcc : mapAccOpp.keySet()){
            System.debug('key --> ' + idAcc);
            System.debug('value --> ' + mapAccOpp.get(idAcc));
            for(Opportunity objOpportunity : mapAccOpp.get(idAcc)){
                System.debug('opportunity Id --> ' + objOpportunity.Id);
                System.debug('opportunity Name --> ' + objOpportunity.Name);
            }
        }
    }
    
    public static void mapOpportunityAccountId(Id idAccount){        
        List<Contact> lstContact = [SELECT Id, Name, AccountId FROM Contact WHERE AccountId =: idAccount];       
        Map<Id, List<Contact>> mapContactRelatedAcc = new Map<Id, List<Contact>>();
        mapContactRelatedAcc.put(idAccount, lstContact);
		System.debug('Contacts for Account--> ' + lstContact);                
        List<Opportunity> ltsOpportunity = [SELECT Id, Name, AccountId FROM Opportunity WHERE AccountId =: idAccount];
		System.debug('Opportunities for Account--> ' + ltsOpportunity);
        for(Opportunity objOpportunity : ltsOpportunity){
            for(Contact objContact : mapContactRelatedAcc.get(objOpportunity.AccountId)){
                system.debug('--> ' + objContact);
            }
        }             
        
        map<Id, map<Id, List<Contact>>> mapOpportunity = new map<Id, map<Id, List<Contact>>>();
    }
    
    public static void mapOpportunityAccount(Id idAccount){        
        Contact objContactAccount = [SELECT Id, Name, AccountId FROM Contact WHERE AccountId =: idAccount LIMIT 1];              
        List<Opportunity> ltsOpportunity = [SELECT Id, Name, AccountId FROM Opportunity WHERE AccountId =: idAccount];
        //map with 'Account Id' and 'Opportunity List'
        map<Id, List<Opportunity>> mapAccountOpportunity = new map<Id, List<Opportunity>>();
        mapAccountOpportunity.put(idAccount, ltsOpportunity);                
        //map with 'Contact Id' and map with 'Account Id' and 'Opportunity List'
        map<Id, map<Id, List<Opportunity>>> mapOpportunityAccount = new map<Id, map<Id, List<Opportunity>>>();
        mapOpportunityAccount.put(objContactAccount.Id, mapAccountOpportunity);        
		//System.debug('Map--> ' + mapOpportunityAccount);  
		//view first level of map Map<Id, Map<Id,List>>     
        for(Id idContact : mapOpportunityAccount.keySet()){
            system.debug('Contact id --> ' + idContact);
            //system.debug('map--> ' + mapOpportunityAccount.get(idContact));
            //second level of map of map --> Map<Id, List>
            for(Id idAcc : mapOpportunityAccount.get(idContact).keyset()){
                system.debug('Account id ---> ' + idAcc);
                system.debug('Opportunities list for account id');
                //system.debug('opportunities list for account id: ' + mapOpportunityAccount.get(idContact).get(idAcc));
                //third level of map of map of list --> Id, List
                for(Opportunity objOpportunity : mapOpportunityAccount.get(idContact).get(idAcc)){
                    System.debug('	Opportunity id ----> ' + objOpportunity.Id);
                    System.debug('	Opportunity name ----> ' + objOpportunity.Name);
                }                
            }
        }                             
    }
    
}
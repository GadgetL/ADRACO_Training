/*************************************************************************************** 
* Name: ADR_Colecciones
* Test: ADR_Colecciones_Test
* Author: Valentín López Morales 
* Description: Example of collection
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Collections
*/
public class ADR_Colecciones {
    
    /*
    * Method Name: mapAccountId
    * Description: Object to map conversion
    * Return Type: void
    * Parameters: 
    */
    public static void mapAccountId(){
        //Id Account y Name
        Map<Id, String> mapAccount = new Map<Id, String>();
        
        Account objAccount = [SELECT Id, Name FROM Account LIMIT 1];
        system.debug('--->'+objAccount);
        
        mapAccount.put(objAccount.Id,objAccount.Name);
        system.debug('--->'+mapAccount);
        system.debug(mapAccount.get(objAccount.Id));
    }
    
    /*
    * Method Name: mapContactId
    * Description: Object to map conversion
    * Return Type: void
    * Parameters: 
    */
    public static void mapContactId(){
        Map<Id, String> mapContact = new Map<Id, String>();
        Contact objContact = [SELECT Id, Name FROM Contact LIMIT 1];
		system.debug('--->'+objContact);
        mapContact.put(objContact.Id,objContact.Name);
        system.debug('--->'+mapContact);
        system.debug(mapContact.get(objContact.Id));
    }
    
    /*
    * Method Name: mapContactRelatedAccount
    * Description: Displays a map with the account id and a list of related contacts
    * Return Type: void
    * Parameters: Id idAccount
    */
    public static void mapContactRelatedAccount(Id idAccount){
        //List<Account> lstAccount = [SELECT Id, Name, (SELECT Id, Name, Email, AccountId FROM Contacts) FROM Account];
        List<Contact> lstContact = [SELECT Id, Name FROM Contact WHERE AccountId =: idAccount];
        Map<Id,List<Contact>> mapContactRelatAcc = new Map<Id,List<Contact>>();
        
        mapContactRelatAcc.put(idAccount, lstContact);
        system.debug('-->'+mapContactRelatAcc);
        for(Id idAcc : mapContactRelatAcc.keyset()){
            system.debug('Key-->'+idAcc);
            system.debug('Value-->'+mapContactRelatAcc.get(idAcc));
            for(Contact objContact : mapContactRelatAcc.get(idAcc)){
                system.debug('Id-->'+objContact.Id);
                system.debug('Name-->'+objContact.Name);
            }
        }
    }
    
    /*
    * Method Name: mapAccountRelatedOpportunity
    * Description: Displays a map with the account id and a list of related opportunities
    * Return Type: void
    * Parameters: Id idAccount
    */
    public static void mapAccountRelatedOpportunity(Id idAccount){
        List<Opportunity> lstOpportunity = [SELECT Id, Name FROM Opportunity WHERE AccountId =: idAccount];
        Map<Id,List<Opportunity>> mapOpportunity = new Map<Id,List<Opportunity>>();
        
        mapOpportunity.put(idAccount,lstOpportunity);
        
        
        system.debug('AccountId: '+idAccount);
        for(Opportunity objOpportunity : mapOpportunity.get(idAccount)){
            system.debug('OpportunityId: '+objOpportunity.Id);
            system.debug('OpportunityName: '+objOpportunity.Name);
        }
    }
    
    /*
    * Method Name: mapContactOpportunityAccount
    * Description: Example map of map
    * Return Type: void
    * Parameters: Id idAccount
    */
    public static void mapContactOpportunityAccount(Id idAccount){
        //Map<IdManager(Contacto),map<idAccount,Lista<oportunidades>>>
        Contact objContact = [SELECT Id, Name FROM Contact WHERE AccountId =: idAccount LIMIT 1];
        system.debug('Contacto que pertenece esa cuenta--> '+objContact);
        
        List<Opportunity> lstOpportunity = [SELECT Id, Name, AccountId FROM Opportunity WHERE AccountId =: idAccount];
        system.debug('Oportunidades que pertenece esa cuenta--> '+lstOpportunity);
        Map<Id,List<Opportunity>> mapAccountOpportunity = new Map<Id,List<Opportunity>>();      
		mapAccountOpportunity.put(idAccount, lstOpportunity);
        
        Map<Id,Map<Id,List<Opportunity>>> mapOpportunityAccount = new Map<Id,Map<Id,List<Opportunity>>>();
        mapOpportunityAccount.put(objContact.Id,mapAccountOpportunity);
        System.debug('---> '+mapOpportunityAccount);
        
        for(Id idContact : mapOpportunityAccount.keySet()){
            System.debug('Id Contact--> '+idContact);
            for(Id idAcc : mapOpportunityAccount.get(idContact).keySet()){
                System.debug('Id Account--> '+idAcc);
                for(Opportunity objOpportunity : mapOpportunityAccount.get(idContact).get(idAcc)){
                    system.debug('Id Opportunity---> '+objOpportunity.Id);
                    system.debug('Name Opportunity---> '+objOpportunity.Name);
                }
            }
        }
        //Map<Id,Map<Id,List<Contact>>> mapContact = new Map<Id,Map<Id,List<Contact>>>();       
    }
    
    /*public static void mapContactOpportunityAccounts(Id idAccount){
        
        List<Contact> lstContact = [SELECT Id, Name FROM Contact WHERE AccountId =: idAccount];
        Map<Id,List<Contact>> mapContactRelatedAcc = new Map<Id,List<Contact>>();
        mapContactRelatedAcc.put(idAccount, lstContact);
        system.debug('Contactos que pertenece esa cuenta-->'+lstContact);    
        
        List<Opportunity> lstOpportunity = [SELECT Id, Name, AccountId FROM Opportunity WHERE AccountId =: idAccount];
        system.debug('Oportunidades que pertenece esa cuenta-->'+lstOpportunity);
        
        for(Opportunity objOpportunity : lstOpportunity){
            for(Contact objContact : mapContactRelatedAcc.get(objOpportunity.AccountId)){
                system.debug('Contact-->'+objContact);
            }
        }
        //Map<Id,Map<Id,List<Contact>>> mapContact = new Map<Id,Map<Id,List<Contact>>>();       
    }*/
}
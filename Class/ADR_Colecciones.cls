/************************************************************************************************************
 * Name: ADR_Colecciones
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Basic used of List and Map standard object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 23-05-2022			 | v0.1				 | Representation of relationship Contact-Account-Opportunity
*/
public class ADR_Colecciones {
    public static void mapContact(){
        map<id, string> mapIdContact = new map<id, string>();
        Contact objCont = [SELECT id, Name From Contact LIMIT 1];
        mapIdContact.put(objCont.Id, objCont.Name);
        System.debug('ID: '+objCont.Id +' Name: '+mapIdContact.get(objCont.Id));        
    }
    public static void mapContactsRelateAccount(id idAccount){
        //List<Account> lstAccount = [SELECT id, name, (SELECT Id, Name, email, AccountId FROM Contacts) from Account];
        List<Contact> lstContact = [SELECT id, Name FROM Contact WHERE AccountId =:idAccount];
        map<id, List<Contact>> mapContactsRelateAccount = new map<id, List<Contact>>();
        mapContactsRelateAccount.put(idAccount, lstContact);
        system.debug('----> '+mapContactsRelateAccount);
        for(id idAcc : mapContactsRelateAccount.keySet()){
            system.debug('ID: ' +mapContactsRelateAccount.keySet());
            for(Contact objCont : mapContactsRelateAccount.get(idAcc)){
                System.debug('Contact id: '+objCont.Id+' Contact Name: ' + objCont.Name);
            }
        }
    }
    //Ejercicio 23 de mayo de 2022
    public static void mapOpportunitiesRelateAccount(id idAccount){
        List<Opportunity> lstOpportunity = [SELECT id, Name FROM Opportunity WHERE AccountId =:idAccount];
        map<id, List<Opportunity>> mapOpportunityRelateAccount = new map<id, List<Opportunity>>();
        mapOpportunityRelateAccount.put(idAccount, lstOpportunity);
        system.debug('----> '+mapOpportunityRelateAccount);
        for(id IdAcc : mapOpportunityRelateAccount.keySet()){
            System.debug('ID: '+ mapOpportunityRelateAccount.keySet());
            for(Opportunity objOpp : mapOpportunityRelateAccount.get(IdAcc)){
                system.debug('Opportunity id: '+objOpp.Id+' Name: '+objOpp.Name);
            }
        }
    }
    
    public static void mapContactOpportunityAccount(id idAccount){
        Contact objContact = [SELECT id, Name FROM Contact WHERE AccountId =:idAccount LIMIT 1];
        
        List<Opportunity> lstOpportunity = [SELECT id, Name, AccountId FROM Opportunity WHERE AccountId =:idAccount];
        map<id, List<Opportunity>> mapAcconOpportu = new map<id, List<Opportunity>>();
        mapAcconOpportu.put(idAccount, lstOpportunity);
        
        map<id, map<id, List<Opportunity>>> mapOpportAccon = new map<id, map<id, List<Opportunity>>>();
        mapOpportAccon.put(objContact.Id, mapAcconOpportu);
        system.debug('Contacto: '+objContact.Name);
        for(id idConta : mapOpportAccon.keySet()){
            //system.debug('map-->'+mapOpportAccon.get(idConta));
            system.debug('Cuenta: '+ mapOpportAccon.get(idConta).keySet());
            for(id idAcc : mapOpportAccon.get(idConta).keySet()){
                //system.debug('---> '+mapOpportAccon.get(idConta).get(idAcc));
                for(Opportunity objOpp : mapOpportAccon.get(idConta).get(idAcc)){
                    system.debug('----> Id: '+objOpp.Id+'\n----> Name: '+objOpp.Name);
                }
            }
        }
        
    }

}
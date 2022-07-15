public class ADR_Colecciones {
    public static void mapAccountId(){
        map<id, string> mapIdAccount = new map<id, string>();
        Account objAccount = [SELECT Id, name FROM Account LIMIT 1];
        system.debug(objAccount);
        mapIdAccount.put(objAccount.Id, objAccount.Name);
        system.debug(mapIdAccount);
        system.debug('Nombre: ' + mapIdAccount.get(objAccount.Id));
    }
    
    public static void mapContactId(){
        map<id, string> mapIdContact = new map<id, string>();
        Contact objContact = [SELECT Id, Name FROM Contact LIMIT 1];
        system.debug(objContact);
        mapIdContact.put(objContact.Id, objContact.Name);
        system.debug(mapIdContact);
        system.debug('Nombre: ' + mapIdContact.get(objContact.Id));
    }
    
    public static void mapAccountOpportunities() {
        Map<Id, List<Opportunity>> mapIdOpportunities = new Map<Id, List<Opportunity>>();
        List<Opportunity> lstOpportunities = new List<Opportunity>();
        for(Account objAccount : [SELECT id FROM Account LIMIT 3]){
            lstOpportunities = [SELECT Id, Name FROM Opportunity WHERE AccountId = :objAccount.Id];
            mapIdOpportunities.put(objAccount.Id, lstOpportunities);
        }
        
        for(Id idAccount : mapIdOpportunities.keyset()){
            system.debug('Key: ' + idAccount);
            system.debug('Value: ' + mapIdOpportunities.get(idAccount));
            for(Opportunity objOpportunity : mapIdOpportunities.get(idAccount)) {
                system.debug('Id Opportunity: ' + objOpportunity.Id);
                system.debug('Name Opportunity: ' + objOpportunity.Name);
            }
        }
    }
    
    public static void mapContactOpportunityAccount(Id idAccount) {
        Contact objContact = [SELECT Id, Name FROM Contact WHERE AccountId = :idAccount];
        
        List<Opportunity> lstOpportunities = [SELECT Id, Name, AccountId FROM Opportunity WHERE AccountId = :idAccount];
        Map<Id, List<Opportunity>> mapAccountOpportunity = new Map<Id, List<Opportunity>>();
        mapAccountOpportunity.put(idAccount, lstOpportunities);
        
        Map<Id, Map<Id, List<Opportunity>>> mapOpportunityAccount = new Map<Id, Map<Id, List<Opportunity>>>();
        mapOpportunityAccount.put(objContact.Id, mapAccountOpportunity);
        system.debug('Mapa padre: ' + mapOpportunityAccount);
        for(Id idContact : mapOpportunityAccount.keySet()){
            system.debug('ID Contacto: ' + idContact);
            for(Id idAcc : mapOpportunityAccount.get(idContact).keySet()){
                system.debug('ID Cuenta: ' + idAcc);
                system.debug('Lista de oportunidades de la cuenta: ');
                for(Opportunity objOpportunity : mapOpportunityAccount.get(idContact).get(idAcc)){
                    system.debug('Nombre: ' + objOpportunity.Name);
                    system.debug('ID: ' + objOpportunity.Id);
                }
            }
        }
    }
}
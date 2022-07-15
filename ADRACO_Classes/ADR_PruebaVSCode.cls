public with sharing class ADR_PruebaVSCode {
    public ADR_PruebaVSCode() {
        Opportunity objOpportunity = [SELECT Name FROM Opportunity LIMIT 3];
        System.debug(objOpportunity);
    }
}
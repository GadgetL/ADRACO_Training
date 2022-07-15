/************************************************************************************************************
 * Name: ADR_DisplayOpportunity
 * Class test: ADR_DisplayOppor_Test
 * Autor: Francisco Reyes
 * Description: Consulting records of Contact object for displaying in an lightning component.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation of records
*/
public class ADR_DisplayOpportunity {
    @AuraEnabled
    public static List<Opportunity> fetchOpportunityRecords(){
    	return [SELECT  Id, Name, Description, StageName, Type, Account.Name, Account.Site, Account.Phone FROM Opportunity ORDER BY createdDate ASC LIMIT 10];
    }
    @AuraEnabled
    public static List<Opportunity> fetchOpportunityRecor(string strName){//Burlington Textiles Corp of America
        return [SELECT Id, Name, Description, StageName, Type, Account.Name, Account.Site, Account.Phone FROM Opportunity Where Account.Name=:strName ORDER BY createdDate ASC LIMIT 5];
    }

}
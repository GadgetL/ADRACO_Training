/************************************************************************************************************
 * Name: ADR_CreateAndDisplayOppoInformation
 * Class test: ADR_CreateAndDisplayOppo_Test
 * Autor: Francisco Reyes
 * Description: Insert and Consulting records of Opportunity object for displaying in an lightning component.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation and insert of records
*/
public class ADR_CreateAndDisplayOppoInformation {
     @AuraEnabled
    public static void createOpportunitys(Opportunity objOppor){
        //system.debug('insert'+objOppor);
        try{
            insert objOppor;
            //system.debug('insert'+objOppor);
        }catch(DmlException e){
   			System.debug('The following exception has occurred: ' + e.getMessage());
        }
    }
    @AuraEnabled
    public static list<Opportunity> displayOpportunitys(){
        return [SELECT  Id, Name, StageName, Type, Account.Name, CloseDate FROM Opportunity Order By CreatedDate DESC LIMIT 15];
    }

}
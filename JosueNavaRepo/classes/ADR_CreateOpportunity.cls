/*
metodo para Crear e insertar una oportunidad y
metodo que retorna una lista de oportunidades 
 */
 public class ADR_CreateOpportunity {

    @AuraEnabled
    public static void createOpportunity(Opportunity objOpp){
        try{
        	Insert objOpp; 
        }catch(DmlException e){
            System.debug('The following exception has occurred: '+e.getMessage());
        }
    }  
    
     @AuraEnabled
    public static List<Opportunity> displayOpportunity(){
        return [SELECT Id, Name, StageName, CloseDate, Type, Description FROM Opportunity Order By CreatedDate DESC LIMIT 10];
    }
}
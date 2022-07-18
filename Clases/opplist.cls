public class opplist {
	@AuraEnabled
     public static list<opportunity> getopplist(){
        list<opportunity> opps = new list<opportunity>([select Id,Name,Account.Name,Account.Phone,Account.Site,stageName,Type,Description from opportunity limit 10]);
        return opps;
    }
    @AuraEnabled
    public static list<opportunity> getopplis(){
        list<opportunity> opps = new list<opportunity>([SELECT AccountId, Id, Name,Description,StageName, Account.Site,Account.Name,Account.Phone FROM Opportunity Where Account.Name= 'Edge Communications' order by createdDate ASC LIMIT 5]);
        return opps;
    }
}
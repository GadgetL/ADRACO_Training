public class ADR_Wrappers {
    public static void opportunityAccountInformation(Id idAcc) {
        List<Opportunity> lstOpportunities = [SELECT Id, Account.Name, Account.Type, Account.Phone, Name, FiscalYear FROM Opportunity WHERE AccountId = :idAcc];
        WrapperLstOppAccInfo objWrapperLstOppAccInfo = new WrapperLstOppAccInfo();
        
        for(Opportunity objOpp : lstOpportunities) {
            system.debug('ObjOpp: ' + objOpp);
            system.debug('Account.Name: ' + objOpp.Account.Name);
            system.debug('Account.Type: ' + objOpp.Account.Type);
            system.debug('Account.Phone: ' + objOpp.Account.Phone);
            system.debug('Name: ' + objOpp.Name);
            system.debug('FiscalYear: ' + objOpp.FiscalYear);
            
            WrapperOppAccInfo objWrapperOppAccInfo = new WrapperOppAccInfo();
            
            objWrapperOppAccInfo.idOpportunity = objOpp.Id;
            objWrapperOppAccInfo.strAccounName = objOpp.Account.Name;
            objWrapperOppAccInfo.strAccountType = objOpp.Account.Type;
            objWrapperOppAccInfo.strOppPhone = objOpp.Account.Phone;
            objWrapperOppAccInfo.strOppName = objOpp.Name;
            objWrapperOppAccInfo.strOppFiscalYear = objOpp.FiscalYear;
            
            objWrapperLstOppAccInfo.lstWrapperOppAccInfo.add(objWrapperOppAccInfo);
        }
    }
    
    public static void contactAccountInformation(Id idAcc) {
        List<Contact> lstContacts = [SELECT Account.Id, Account.Name, Account.BillingLatitude, Account.CreatedDate, Account.IsDeleted, Id, Name, OtherLatitude, IsDeleted, CreatedDate FROM Contact WHERE AccountId = :idAcc];
        WrapperLstContAccInfo objWrapperLstContAccInfo = new WrapperLstContAccInfo();
        
        for(Contact objCont : lstContacts) {
            WrapperContAccInfo objWrapperContAccInfo = new WrapperContAccInfo();
            
            objWrapperContAccInfo.idContact = objCont.Id;
            objWrapperContAccInfo.strContactName = objCont.Name;
            objWrapperContAccInfo.decContactLatitude = objCont.OtherLatitude;
            objWrapperContAccInfo.boolContactIsDeleted = objCont.IsDeleted;
            objWrapperContAccInfo.dateContactCreatedDate = objCont.CreatedDate;
            objWrapperContAccInfo.idAccount = objCont.Account.Id;
            objWrapperContAccInfo.strAccountName = objCont.Account.Name;
            objWrapperContAccInfo.decAccountLatitude = objCont.Account.BillingLatitude;
            objWrapperContAccInfo.boolAccountIsDeleted = objCont.Account.IsDeleted;
            objWrapperContAccInfo.dateAccountCreatedDate = objCont.Account.CreatedDate;
            
            objWrapperLstContAccInfo.lstWrapperContAccInfo.add(objWrapperContAccInfo);
        }
        
        for(WrapperContAccInfo objWrapper : objWrapperLstContAccInfo.lstWrapperContAccInfo) {
            system.debug(objWrapper);
        }
    }
    
    public class WrapperLstOppAccInfo {
        public List<WrapperOppAccInfo> lstWrapperOppAccInfo = new List<WrapperOppAccInfo>();
    }
    
    public class WrapperOppAccInfo {
        public Id idOpportunity {get; set;}
        public String strAccounName {get; set;}
        public String strAccountType {get; set;}
        public String strOppPhone {get; set;}
        public String strOppName {get; set;}
        public Integer strOppFiscalYear {get; set;}
    }
    
    public class WrapperContAccInfo {
        public Id idContact {get; set;}
        public String strContactName {get; set;}
        public Decimal decContactLatitude {get; set;}
        public Boolean boolContactIsDeleted {get; set;}
        public Datetime dateContactCreatedDate {get; set;}
        public Id idAccount {get; set;}
        public String strAccountName {get; set;}
        public Decimal decAccountLatitude {get; set;}
        public Boolean boolAccountIsDeleted {get; set;}
        public Datetime dateAccountCreatedDate {get; set;}
    }
    
    public class WrapperLstContAccInfo {
        public List<WrapperContAccInfo> lstWrapperContAccInfo = new List<WrapperContAccInfo>();
    }
}
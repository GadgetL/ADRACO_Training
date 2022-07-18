public class ADR_Wrappers {
    public static void opportunityAccountInformation(Id idAcc){
        list<Opportunity> lstOpportunity = [SELECT Id, Account.Name, Account.Type, Account.Phone, Name, Type, FiscalYear FROM Opportunity WHERE AccountId=:idAcc];                
        list<WrapperOppAccInfo> lstWrapperOppAccInfo = new list<WrapperOppAccInfo>();
        WrapperOppAccInfo objWrapperOppAccInfo = new WrapperOppAccInfo();
        for(Opportunity objOpp : lstOpportunity){
            System.debug('objOpp: ' + objOpp);
            System.debug('Account Name' + objOpp.Account.Name);
            System.debug('Account Type' + objOpp.Account.Type);
            System.debug('Account Phone' + objOpp.Account.Phone);
            System.debug('Name' + objOpp.Name);
            System.debug('Date' + objOpp.FiscalYear);            
            objWrapperOppAccInfo.idOpportunity = objOpp.Id;
            objWrapperOppAccInfo.strAccountName = objOpp.Account.Name;
            objWrapperOppAccInfo.strAccountType = objOpp.Account.Type;  
            objWrapperOppAccInfo.srtOppPhone = objOpp.Account.Phone; 
            objWrapperOppAccInfo.srtOppName = objOpp.Name; 
            objWrapperOppAccInfo.intOppFiscalYear = objOpp.FiscalYear;   
            lstWrapperOppAccInfo.add(objWrapperOppAccInfo);
        }                
        System.debug('objOpp: ' + objWrapperOppAccInfo);   
        
        wrappetLstOppAccInfo objWrappetLstOppAccInfo = new wrappetLstOppAccInfo();
		objWrappetLstOppAccInfo.lstWrapperOppAccInfo = lstWrapperOppAccInfo;
        System.debug('wrapp Padre: ' + objWrappetLstOppAccInfo);
        
        for(WrapperOppAccInfo objWrapp : lstWrapperOppAccInfo){
            System.debug('objWrapp: ' + objWrapp);
        }
    }

    public class wrappetLstOppAccInfo{
        list<WrapperOppAccInfo> lstWrapperOppAccInfo {get; set;}
    }    
    
    public class WrapperOppAccInfo{
        public Id idOpportunity {get; set;}
        public String strAccountName {get; set;}
        public String strAccountType {get; set;}
        public String srtOppPhone {get; set;}
		public String srtOppName{get; set;}
        public Integer intOppFiscalYear {get; set;}
    }
    
    
    //wrapper for account and contact
    public class WrapperContactAccount{
        public String strAccountName {get; set;}
        public String strAccountType {get; set;}
        public String srtAccountShippingCity {get; set;}
		public Boolean boolAccountIsDeleted {get; set;} 
        public Decimal decAccountAnnualRevenue {get; set;} 
		public Id idContact {get; set;}
        public String strContactName {get; set;}
        public String strContactEmail {get; set;}
        public Date datContactBirthdate {get; set;}
		public String strContactPhone {get; set;} 
    }
    
    public class WrapperLstContAccInfo{
        list<WrapperContactAccount> lstWrapperContAccInfo {get; set;}
    } 
    
    public static void contactAccountInfo(Id idAcc){
        list<Contact> lstContact = [SELECT Id, Account.Name, Account.Type, Account.ShippingCity, Account.IsDeleted, Account.AnnualRevenue, Name, Email, Birthdate, Phone FROM Contact WHERE AccountId=:idAcc];                
        list<WrapperContactAccount> lstWrapperContAccInfo = new list<WrapperContactAccount>();
        WrapperContactAccount objWrapperContactAccount = new WrapperContactAccount();
        
        for(Contact objContact : lstContact){
            System.debug('ObjContact: ' + objContact);
            System.debug('Account Name: ' + objContact.Account.Name);
            System.debug('Account Type: ' + objContact.Account.Type);
            System.debug('Account ShippingCity: ' + objContact.Account.ShippingCity);
            System.debug('Account IsDeleted: ' + objContact.Account.IsDeleted);
            System.debug('Account AnnualRevenue: ' + objContact.Account.AnnualRevenue);
            System.debug('Contact Id: ' + objContact.Id);
            System.debug('Contact Name: ' + objContact.Name);
            System.debug('Contact Email: ' + objContact.Email);
            System.debug('Contact Birthdate: ' + objContact.Birthdate);
            System.debug('Contact Phone: ' + objContact.Phone);
            
            objWrapperContactAccount.strAccountName = objContact.Account.Name;
            objWrapperContactAccount.strAccountType = objContact.Account.Type;
            objWrapperContactAccount.srtAccountShippingCity = objContact.Account.ShippingCity;  
            objWrapperContactAccount.boolAccountIsDeleted = objContact.Account.IsDeleted; 
            objWrapperContactAccount.decAccountAnnualRevenue = objContact.Account.AnnualRevenue; 
            objWrapperContactAccount.idContact = objContact.Id;
            objWrapperContactAccount.strContactName = objContact.Name;
            objWrapperContactAccount.strContactEmail = objContact.Email;  
            objWrapperContactAccount.datContactBirthdate = objContact.Birthdate; 
            objWrapperContactAccount.strContactPhone = objContact.Phone;  
            
            lstWrapperContAccInfo.add(objWrapperContactAccount);
            System.debug('objWrapperContAcc: ' + objWrapperContactAccount); 
        }                
        
        WrapperLstContAccInfo objWrapperLstContAccInfo = new WrapperLstContAccInfo();
		objWrapperLstContAccInfo.lstWrapperContAccInfo = lstWrapperContAccInfo;
        System.debug('wrapp Padre: ' + objWrapperLstContAccInfo);
        
        for(WrapperContactAccount objWrapp : lstWrapperContAccInfo){
            System.debug('objWrapp: ' + objWrapp);
            System.debug('Wrapp strAccountName: ' + objWrapp.strAccountName);
            System.debug('Wrapp strAccountType: ' + objWrapp.strAccountType);
            System.debug('Wrapp srtAccountShippingCity: ' + objWrapp.srtAccountShippingCity);
            System.debug('Wrapp boolAccountIsDeleted: ' + objWrapp.boolAccountIsDeleted);
            System.debug('Wrapp decAccountAnnualRevenue: ' + objWrapp.decAccountAnnualRevenue);
            System.debug('Wrapp idContact: ' + objWrapp.idContact);
            System.debug('Wrapp strContactName: ' + objWrapp.strContactName);
            System.debug('Wrapp strContactEmail: ' + objWrapp.strContactEmail);
            System.debug('Wrapp datContactBirthdate: ' + objWrapp.datContactBirthdate);
            System.debug('Wrapp strContactPhone: ' + objWrapp.strContactPhone);
        }
    }
}
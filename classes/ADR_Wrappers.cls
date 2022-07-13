public class ADR_Wrappers {

    public static void opportunitAccountInformation(Id idAcc){
        list<Opportunity> lstOpportunity = [SELECT Id,Account.name, Account.Type,Account.Phone,Name, FiscalYear FROM Opportunity WHERE AccountId=:idAcc];
        list<wrapperOppAccInfo> lstwrapperOppAccInfo = new list<wrapperOppAccInfo>();
        
        
        
        for(Opportunity objOpp:lstOpportunity){
             system.debug('objOpp' + objOpp);
            system.debug('Account Name' + objOpp.Account.name);
             system.debug('Account Type' + objOpp.Account.Type);
            system.debug('Account Phone' + objOpp.Account.Phone);
            system.debug('Name' + objOpp.Name);
            system.debug('Data' + objOpp.FiscalYear);
            wrapperOppAccInfo objwrapperOppAccInfo = new wrapperOppAccInfo();
            objwrapperOppAccInfo.idOpportunity = objOpp.id;
            objwrapperOppAccInfo.strAccountName = objOpp.Account.name;
            objwrapperOppAccInfo.strAccountType = objOpp.Account.Type;
            objwrapperOppAccInfo.strOppPhone = objOpp.Account.Phone;
            objwrapperOppAccInfo.strOppName = objOpp.Name;
            objwrapperOppAccInfo.strOppFiscalYear = objOpp.FiscalYear;
            lstwrapperOppAccInfo.add(objwrapperOppAccInfo);
            
        }
        wrapperlstOppAccInfo objwrapperlstOppAccInfo = new wrapperlstOppAccInfo();
        objwrapperlstOppAccInfo.lstwrapperOppAccInfo = lstwrapperOppAccInfo;
        system.debug('Wrapper Padre----->' + objwrapperlstOppAccInfo);
        for(wrapperOppAccInfo objwrapp: lstwrapperOppAccInfo){
            system.debug('----->' + objwrapp);
        }
        
    }
    
    public class wrapperlstOppAccInfo{
        list<wrapperOppAccInfo> lstwrapperOppAccInfo{get;set;}
    }
    
    public class wrapperOppAccInfo{
        public Id idOpportunity{get;set;}
        public String strAccountName{get;set;}
        public String strAccountType{get;set;}           
        public String strOppPhone{get;set;}  
        public String strOppName{get;set;}
 		public Integer strOppFiscalYear{get;set;}    
        
    }
    public class wrapperAccInfoContact{
        public String strAccountName{get;set;}
        public String strAccountNumber{get;set;} 
        public String strAccountType{get;set;}           
        public String strAccountSite{get;set;}   
        public String strAccountSource{get;set;} 
        public String strContactDepartament{get;set;} 
        public String strContactDescription{get;set;}
        public String strContactEmail{get;set;} 
        public String strContactFax{get;set;}
        public String strContactLanguages{get;set;}
    }
     public class wrapperlstAccInfoContact{
        list<wrapperAccInfoContact> lstwrapperAccInfoContact{get;set;}
    }
    public static void AccountInformationContact(Id idAcc){
        list<Contact> lstContact = [SELECT Id,Account.name, Account.Type,Account.Phone,Account.Site,Account.AccountSource,Department, 
                                    Description,Email,Fax,Languages__c FROM Contact WHERE AccountId=:idAcc];
        list<wrapperAccInfoContact> lstwrapperAccInfoContact = new list<wrapperAccInfoContact>();
        
        
        
        for(Contact objContact:lstContact){            
            wrapperAccInfoContact objwrapperAccInfoContact = new wrapperAccInfoContact();
          	objwrapperAccInfoContact.strAccountName = objContact.Account.name;
            objwrapperAccInfoContact.strAccountNumber = objContact.Account.Phone;
            objwrapperAccInfoContact.strAccountType = objContact.Account.Type;
            objwrapperAccInfoContact.strAccountSite = objContact.Account.Site;
            objwrapperAccInfoContact.strAccountSource = objContact.Account.AccountSource;
            objwrapperAccInfoContact.strContactDepartament = objContact.Department;
            objwrapperAccInfoContact.strContactDescription = objContact.Description;
            objwrapperAccInfoContact.strContactEmail = objContact.Email;
            objwrapperAccInfoContact.strContactFax = objContact.Fax;
            objwrapperAccInfoContact.strContactLanguages = objContact.Languages__c;
            
        
            lstwrapperAccInfoContact.add(objwrapperAccInfoContact);
            
        }
        wrapperlstAccInfoContact objwrapperlstAccInfoContact = new wrapperlstAccInfoContact();
        objwrapperlstAccInfoContact.lstwrapperAccInfoContact = lstwrapperAccInfoContact;
        system.debug('Wrapper Padre----->' + objwrapperlstAccInfoContact);
        for(wrapperAccInfoContact objwrapp: lstwrapperAccInfoContact){
            system.debug('----->' + objwrapp);
        }
        
    }
}
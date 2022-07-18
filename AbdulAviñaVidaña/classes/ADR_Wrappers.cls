public class ADR_Wrappers {
    /*public static void opportunityAccountInformation(Id idAcc){
        list<Opportunity> lstOpportunity =[SELECT Id, Account.name, Account.Type,Account.Phone,Name, FiscalYear FROM Opportunity WHERE AccountId=:idAcc ];
        list<wrapperOppAccInfo> lstwrapperOppAccInfo = new list<wrapperOppAccInfo>();
        
        for(Opportunity objOpp:lstOpportunity ){
            system.debug('objOpp:'+objOpp);
            system.debug('Account.name:'+objOpp.Account.name);
            system.debug('Account.Type:'+objOpp.Account.Type);
            system.debug('Account.Phone:'+objOpp.Account.Phone);
            system.debug('Name:'+objOpp.Name);
            system.debug('Data:'+objOpp.FiscalYear);
            wrapperOppAccInfo objwrapperOppAccInfo = new wrapperOppAccInfo();
            objwrapperOppAccInfo.idOpportunity=objOpp.id;
            objwrapperOppAccInfo.strAccountName=objOpp.Account.name;
             objwrapperOppAccInfo.strAccountType=objOpp.Account.Type;
             objwrapperOppAccInfo.strOppPhone=objOpp.Account.Phone;
             objwrapperOppAccInfo.strOppName=objOpp.Name;
            objwrapperOppAccInfo.intOppFiscalYear=objOpp.FiscalYear;
            lstwrapperOppAccInfo.add(objwrapperOppAccInfo);
        }
        
        wrapperlstOppAccInfo objwrapperlstOppAccInfo= new wrapperlstOppAccInfo();
        objwrapperlstOppAccInfo.lstwrapperOppAccInfo=lstwrapperOppAccInfo;
        
        system.debug('Wrapper padre-->'+objwrapperlstOppAccInfo);
        
        
        for(wrapperOppAccInfo objwrapp: lstwrapperOppAccInfo){
            system.debug('_--->'+objwrapp);
            
        }
    }
    //lista de listas de wrapper
    public class wrapperlstOppAccInfo2{
        list<wrapperlstOppAccInfo> lstwrapperOppAccInfo2 {get; set;}
    }
    
    //lista
    public class wrapperlstOppAccInfo{
        list<wrapperOppAccInfo> lstwrapperOppAccInfo {get; set;}
    }
    //objeto
    public class wrapperOppAccInfo{
        public Id idOpportunity {get; set;}
        public string strAccountName {get; set;}
        public string strAccountType {get; set;}
        public string strOppPhone {get; set;}
        public string strOppName {get; set;}
        public Integer intOppFiscalYear{get; set;}
        
    }*/

    public static void ContactAccountInformation(Id idAcc){
		list<Contact> lstContact =[SELECT Id, Account.name, Account.Type,Account.Phone, Account.Site, Account.Industry, Name, Email, Phone, MobilePhone, Department FROM Contact WHERE AccountId=:idAcc ];
		list<wrapperContAccInfo> lstwrapperContAccInfo = new list<wrapperContAccInfo>();
        
        for(Contact objCont:lstContact ){
            system.debug('objCont:'+objCont);
            system.debug('Account.name:'+objCont.Account.name);
            system.debug('Account.Type:'+objCont.Account.Type);
            system.debug('Account.Phone:'+objCont.Account.Phone);
            system.debug('Account.Type:'+objCont.Account.Site);
            system.debug('Account.Phone:'+objCont.Account.Industry);
            system.debug('Name:'+objCont.Name);
            system.debug('Email:'+objCont.Email);
            system.debug('Phone:'+objCont.Phone);
            system.debug('Mobile Phone:'+objCont.MobilePhone);
            system.debug('Departament:'+objCont.Department);
            wrapperContAccInfo objwrapperContAccInfo = new wrapperContAccInfo();
            objwrapperContAccInfo.idContact=objCont.id;
            objwrapperContAccInfo.strAccountName=objCont.Account.name;
             objwrapperContAccInfo.strAccountType=objCont.Account.Type;
            objwrapperContAccInfo.strAccountPhone=objCont.Account.Phone;
             objwrapperContAccInfo.strAccountSite=objCont.Account.Site;
             objwrapperContAccInfo.strAccountIndustry=objCont.Account.Industry;
            objwrapperContAccInfo.strContName=objCont.Name;
             objwrapperContAccInfo.strContEmail=objCont.Email;
            objwrapperContAccInfo.strContPhone=objCont.Phone;
             objwrapperContAccInfo.strContMobilePhone =objCont.MobilePhone;
             objwrapperContAccInfo.strContDepartment =objCont.Department;
             
            lstwrapperContAccInfo.add(objwrapperContAccInfo);
        }
    	
        wrapperlstContAccInfo objwrapperlstContAccInfo= new wrapperlstContAccInfo();
        objwrapperlstContAccInfo.lstwrapperContAccInfo=lstwrapperContAccInfo;
        
        system.debug('Wrapper padre-->'+objwrapperlstContAccInfo);
        
        
        for(wrapperContAccInfo objwrapp: lstwrapperContAccInfo){
            system.debug('_--->'+objwrapp);
            
        }
    }
    
    public class wrapperlstContAccInfo{
        list<wrapperContAccInfo> lstwrapperContAccInfo {get; set;}
    }
    
    public class wrapperContAccInfo{
        public Id idContact {get; set;}
        public string strAccountName {get; set;}
        public string strAccountType {get; set;}
        public string strAccountPhone {get; set;}
        public string strAccountSite {get; set;}
        public string strAccountIndustry {get; set;}
        public string strContName {get; set;}
        public string strContEmail {get; set;}
        public string strContPhone {get; set;}
        public string strContMobilePhone {get; set;}
        public string strContDepartment {get; set;}
        
    }
}
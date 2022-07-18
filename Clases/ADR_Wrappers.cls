public class ADR_Wrappers {
    public static void opportunityAccountInformation(Id idAcc){
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
    
    public class wrapperlstOppAccInfo{
        list<wrapperOppAccInfo> lstwrapperOppAccInfo {get; set;}
    }
    
    public class wrapperOppAccInfo{
        public Id idOpportunity {get; set;}
        public string strAccountName {get; set;}
        public string strAccountType {get; set;}
        public string strOppPhone {get; set;}
        public string strOppName {get; set;}
        public Integer intOppFiscalYear{get; set;}
        
    }
  
}
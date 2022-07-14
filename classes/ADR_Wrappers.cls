public class ADR_Wrappers {

    public static void opportunityAccountInformation(Id idAcc){
        list<Opportunity> lstOpportunity = [Select id,Account.Name, Account.Type, Account.Phone, Name,Type,FiscalYear FROM Opportunity Where AccountId=: idAcc];
        list<wrapperOppAccInfo> lstwrapperOppAccInfo = new list<wrapperOppAccInfo>();
        
        for(Opportunity objOpp: lstOpportunity){
            System.debug('Data:' + objOpp);
            System.debug('Account Name:' + objOpp.Account.Name);
            System.debug('Account.type:' + objOpp.Account.Type);
            System.debug('Account.phone:' + objOpp.Account.Phone);
            System.debug('Name:' + objOpp.Name);
            System.debug('Fiscal year:' + objOpp.FiscalYear);
            wrapperOppAccInfo objwrapperOppAccInfo = new wrapperOppAccInfo();
            
            objwrapperOppAccInfo.idOpportunity= objOpp.Id;
            objwrapperOppAccInfo.strAccountName= objOpp.Account.name;
            objwrapperOppAccInfo.strAccountType= objOpp.Account.Type;
            objwrapperOppAccInfo.strOppPhone= objOpp.Account.Phone;
            objwrapperOppAccInfo.strOppName= objOpp.Name;
            objwrapperOppAccInfo.intOppFiscalYear= objOpp.FiscalYear;
            lstwrapperOppAccInfo.add(objwrapperOppAccInfo);
        }
        wrapperlstOppAccInfo objwrapperlstOppAccInfo = new wrapperlstOppAccInfo();
        objwrapperlstOppAccInfo.lstwrapperOppAccInfo = lstwrapperOppAccInfo;
        
        System.debug('wrapper padre-->' + objwrapperlstOppAccInfo);
        for (wrapperOppAccInfo objwrapp: lstwrapperOppAccInfo){
            System.debug('-->' + objwrapp);
        }
        //System.debug('::::Wrapper-->' + objwrapperOppAccInfo);
    }
    
    public class wrapperlstOppAccInfo{
        list <wrapperOppAccInfo> lstwrapperOppAccInfo {get; set;}
    }
    
    
    public class wrapperOppAccInfo{
        public Id idOpportunity {get; set;}
        public String strAccountName {get; set;}
        public String strAccountType {get; set;}
        public String strOppPhone {get; set;}
        public String strOppName {get; set;}
        public Integer intOppFiscalYear {get; set;}
        
    }
    
    public static void contactAccountInformation(Id idAcc){
        
    	List<Contact> lstContact = [SELECT id, Account.name , Account.NumberOfEmployees,Account.SLAExpirationDate__c, Account.Active__c, Account.Website, name, birthdate, department, email  FROM Contact WHERE AccountId =:idAcc];    
        List <wrapperContactAccInfo> lstwrapperContactAccInfo = new  List <wrapperContactAccInfo>();
        
            for(Contact objContact : lstContact){
                wrapperContactAccInfo objwrapperContactAccInfo = new wrapperContactAccInfo();
                System.debug('Account Id: ' + objContact.Id);
                System.debug('Account Name: ' + objContact.Account.Name);
                System.debug('Account Active:' + objContact.Account.Active__c);
                System.debug('Account Website:' + objContact.Account.Website);
                System.debug('Account employees: ' + objContact.Account.NumberOfEmployees);
                System.debug('Account SLA ExpirationDate: ' + objContact.Account.SLAExpirationDate__c);
                System.debug('Contact Name: ' + objContact.Name);
                System.debug('Contact Email:' + objContact.Email);
                System.debug('Contact BirthDate: ' + objContact.Birthdate);
                System.debug('Contact Department: ' + objContact.Department);
                
                objwrapperContactAccInfo.idContact = objContact.Id;
                objwrapperContactAccInfo.strAccountName = objContact.Account.Name;
                objwrapperContactAccInfo.intAccountEmployees = objContact.Account.NumberOfEmployees;
                objwrapperContactAccInfo.dateAccountExpDate = objContact.Account.SLAExpirationDate__c;
                objwrapperContactAccInfo.strContactName = objContact.Name;
                objwrapperContactAccInfo.dateContactBirthdate = objContact.Birthdate;
                objwrapperContactAccInfo.strDepartment = objContact.Department;
                objwrapperContactAccInfo.strEmail = objContact.Email;
                objwrapperContactAccInfo.strAccountActive = objContact.Account.Active__c;
                objwrapperContactAccInfo.strAccountWebsite = objContact.Account.Website;
                lstwrapperContactAccInfo.add(objwrapperContactAccInfo);
                
            }
        ltswrapperContactAccInfo objlstwrapperContactAccInfo = new ltswrapperContactAccInfo();
        objlstwrapperContactAccInfo.lstwrapperContactAccInfo = lstwrapperContactAccInfo; 
        System.debug('Wrapper padre:' + objlstwrapperContactAccInfo);
        System.debug('Lista wrapper: ' + lstwrapperContactAccInfo);
    }
    
    public class ltswrapperContactAccInfo{
        list <wrapperContactAccInfo> lstwrapperContactAccInfo {get; set;}
    }
    
    public class wrapperContactAccInfo{
        public Id idContact {get; set;}
        public String strAccountName{get; set;}
        public Integer intAccountEmployees{get;set;}
        public Date dateAccountExpDate{get;set;}
        public String strAccountActive {get;set;}
        public String strAccountWebsite {get;set;}
        public String strContactName {get; set;}
        public String strEmail{get;set;}
        public Date dateContactBirthdate {get; set;}
        public String strDepartment {get;set;}    
    }
}
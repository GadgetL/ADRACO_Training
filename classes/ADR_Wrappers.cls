public class ADR_Wrappers {
    public static void OpportunityAccountInformation(Id idAcc){
        list<Opportunity> lstOpportunity = [SELECT Id, Name, Account.name, Account.Type ,Account.Phone, Type, FiscalYear FROM Opportunity where AccountId=:idAcc];      
        List<WrapperOppAccInfo> lstwrapperOppAccInfo=new List<WrapperOppAccInfo>();

        for(Opportunity objOpp: lstOpportunity){
            WrapperOppAccInfo objwrapperOppAccInfo=new WrapperOppAccInfo();

            System.debug('Data: '+objOpp);
            System.debug('Account name: '+objOpp.Account.name);
            System.debug('Account type: '+objOpp.Account.Type);
            System.debug('Name: '+objOpp.Name);
            System.debug('Fiscal Year: '+objOpp.FiscalYear);
            objwrapperOppAccInfo.idOpportunity=objOpp.Id;
//            objwrapperOppAccInfo.strAccountName=objOpp.Account.name;
            objwrapperOppAccInfo.strAccounttype=objOpp.Account.Type;
            objwrapperOppAccInfo.intOppFiscalYear=objOpp.FiscalYear;
            objwrapperOppAccInfo.strOppName=objOpp.Name;
            objwrapperOppAccInfo.strOppPhone=objOpp.Account.Phone;
            lstwrapperOppAccInfo.add(objwrapperOppAccInfo);
        }
      //  System.debug(':::Wrapper--->'+lstwrapperOppAccInfo);
		WrapperlstOppAccContInfo objlstwrapperOppAccInfo=new WrapperlstOppAccContInfo();
		objlstwrapperOppAccInfo.lstwrapperOppAccInfo=lstwrapperOppAccInfo;
        System.debug('Wrapper padre: '+objlstwrapperOppAccInfo);
        for(WrapperOppAccInfo objWrapperOppAccInfo: lstwrapperOppAccInfo){
            System.debug('--->'+objWrapperOppAccInfo);
        }
    }
 public static void ContactAccountInformation(Id idAcc){
        list<Contact> lstContact = [SELECT Id, IsDeleted, Name, OtherLatitude, Birthdate, Account.Id, Account.Name, Account.IsDeleted,Account.ShippingLatitude,Account.CreatedDate FROM Contact WHERE AccountId=:idAcc ];      
        List<WrapperContAccInfo> lstwrapperContAccInfo=new List<WrapperContAccInfo>();

        for(Contact objCont: lstContact){
            WrapperContAccInfo objwrapperContAccInfo=new WrapperContAccInfo();
            objwrapperContAccInfo.idContact=objCont.Id;
            objwrapperContAccInfo.strContactName=objCont.Name;
            objwrapperContAccInfo.blContactIsDeleted=objCont.IsDeleted;
            objwrapperContAccInfo.dbContactOtherLatitude=objCont.OtherLatitude;
            objwrapperContAccInfo.dateContactBirthDate=objCont.Birthdate;
            objwrapperContAccInfo.idAccount=objCont.Account.Id;
            objwrapperContAccInfo.strAccountName=objCont.Account.Name;
            objwrapperContAccInfo.blAccountIsDeleted=objCont.Account.IsDeleted;
            objwrapperContAccInfo.dbAccountShippingLatitude=objCont.Account.ShippingLatitude;
            objwrapperContAccInfo.dateAccountCreatedDate=objCont.Account.CreatedDate;
            lstwrapperContAccInfo.add(objwrapperContAccInfo);
        }
      //  System.debug(':::Wrapper--->'+lstwrapperOppAccInfo);
		WrapperlstOppAccContInfo objlstwrapperContAccInfo=new WrapperlstOppAccContInfo();
		objlstwrapperContAccInfo.lstwrapperContAccInfo=lstwrapperContAccInfo;
        System.debug('Wrapper padre: '+objlstwrapperContAccInfo);
        for(WrapperContAccInfo objWrapperContAccInfo: lstwrapperContAccInfo){
            System.debug('--->'+objWrapperContAccInfo);
            System.debug('idContact: '+objWrapperContAccInfo.idContact);
            System.debug('Contact name: '+objWrapperContAccInfo.strContactName);
            System.debug('Contact Is Deleted: '+objWrapperContAccInfo.blContactIsDeleted);
            System.debug('Contact other latitude: '+objWrapperContAccInfo.dbContactOtherLatitude);
            System.debug('Contact birthdate: '+objWrapperContAccInfo.dateContactBirthDate);
            System.debug('idAccount: '+objWrapperContAccInfo.idAccount);
            System.debug('Account: '+objWrapperContAccInfo.strAccountName);
            System.debug('Account is deleted: '+objWrapperContAccInfo.blAccountIsDeleted);
            System.debug('Account Shipping latitude: '+objWrapperContAccInfo.dbAccountShippingLatitude);
            System.debug('Account created date: '+objWrapperContAccInfo.dateAccountCreatedDate);

        }
    }
    public class WrapperlstOppAccContInfo{
        List<WrapperOppAccInfo> lstwrapperOppAccInfo{get;set;}
        List<WrapperContAccInfo> lstwrapperContAccInfo{get;set;}


    }
    public class WrapperOppAccInfo{
        public Id idOpportunity{get;set;}
        public string strAccountName{get;set;}
        public string strAccounttype{get;set;}
        public string strOppPhone{get;set;}
        public string strOppName{get;set;}
        public integer intOppFiscalYear{get;set;}
     }

        public class WrapperContAccInfo{
        public Id idContact{get;set;}
        public Id idAccount{get;set;}
        public string strAccountName{get;set;}
        public boolean blAccountIsDeleted{get;set;}
        public double dbAccountShippingLatitude{get;set;}
        public datetime dateAccountCreatedDate{get;set;}
        public string strContactName{get;set;}       
        public boolean blContactIsDeleted{get;set;}       
        public double dbContactOtherLatitude{get;set;}       
		public date dateContactBirthDate{get;set;}
		

     }
    //      List<Opportunity> lstOpportunity = [SELECT id, name,(Select Id,Name FROM Opportunity) FROM Account];

}
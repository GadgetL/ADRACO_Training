public class Wrappers {
 	public static void contactAccountInformation(Id idAcc){
        list<Contact> lstContact =[SELECT Id, Account.name, Account.Type,Account.Phone,Name FROM Contact WHERE AccountId=:idAcc ];
        list<wrapperConAccInfo> lstwrapperConAccInfo = new list<wrapperConAccInfo>();
        
        for(Contact objCon:lstContact ){
            system.debug('objCon:'+objCon);
            system.debug('Account.name:'+objCon.Account.name);
            system.debug('Account.Type:'+objCon.Account.Type);
            system.debug('Account.Phone:'+objCon.Account.Phone);
            system.debug('Name:'+objCon.Name);
            wrapperConAccInfo objwrapperConAccInfo = new wrapperConAccInfo();
            objwrapperConAccInfo.idConortunity=objCon.id;
            objwrapperConAccInfo.strAccountName=objCon.Account.name;
            objwrapperConAccInfo.strAccountType=objCon.Account.Type;
            objwrapperConAccInfo.strConPhone=objCon.Account.Phone;
            objwrapperConAccInfo.strConName=objCon.Name;
            lstwrapperConAccInfo.add(objwrapperConAccInfo);
        }
        
        wrapperlstConAccInfo objwrapperlstConAccInfo= new wrapperlstConAccInfo();
        objwrapperlstConAccInfo.lstwrapperConAccInfo=lstwrapperConAccInfo;
        
        system.debug('Wrapper padre-->'+objwrapperlstConAccInfo);
        
        
        for(wrapperConAccInfo objwrapp: lstwrapperConAccInfo){
            system.debug('_--->'+objwrapp);
            
        }
    }
    
    public class wrapperlstConAccInfo{
        list<wrapperConAccInfo> lstwrapperConAccInfo {get; set;}
    }
    
    public class wrapperConAccInfo{
        public Id idConortunity {get; set;}
        public string strAccountName {get; set;}
        public string strAccountType {get; set;}
        public string strConPhone {get; set;}
        public string strConName {get; set;}
       
        
    }
}
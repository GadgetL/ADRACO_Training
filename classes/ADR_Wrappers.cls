/*************************************************************************************** 
* Name: ADR_Wrappers
* Test: AADR_Wrapper_Test
* Author: Valentín López Morales 
* Description: Example Wrappers
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 15-07-22 		  | v0.1 			| Wrappers
*/
public class ADR_Wrappers {
    
    /*
    * Method Name: opportunityAccountInformation
	* Description: Displays list Wrappers of Opportunity related to Account
    * Return Type: void
    * Parameters: Id idAcc
    */
    public static void opportunityAccountInformation(Id idAcc){
        List<Opportunity> lstOpportunity = [SELECT Id, Account.Name, Account.Type, Account.Phone, Name, FiscalYear FROM Opportunity WHERE AccountId =: idAcc];
        List<wrapperOppAccInfo> lstwrapperOppAccInfo = new List<wrapperOppAccInfo>();
        wrapperOppAccInfo objwrapperOppAccInfo = new wrapperOppAccInfo();
        for(Opportunity objOpp : lstOpportunity){
            system.debug('Objet: '+objOpp);
            system.debug('Account.Name: '+objOpp.Account.Name);
            system.debug('Account.Type: '+objOpp.Account.Type);
            system.debug('Account.Phone: '+objOpp.Account.Phone);
            system.debug('Opportunity Name: '+objOpp.Name);
            system.debug('Opportunity FiscalYear: '+objOpp.FiscalYear);
            
            objwrapperOppAccInfo.idOpportunity = objOpp.Id;
        	objwrapperOppAccInfo.strAccountName = objOpp.Account.Name;
        	objwrapperOppAccInfo.strAccountType = objOpp.Account.Type;
        	objwrapperOppAccInfo.strOppPhone = objOpp.Account.Phone;
        	objwrapperOppAccInfo.strOppName = objOpp.Name;
        	objwrapperOppAccInfo.intOppFiscalYear = objOpp.FiscalYear;
            
            lstwrapperOppAccInfo.add(objwrapperOppAccInfo);
        
        }
        wrapperlstOppAccInfo objwrapperlstOppAccInfo= new wrapperlstOppAccInfo();
        objwrapperlstOppAccInfo.lstwrapperOppAccInfo=lstwrapperOppAccInfo;
        
        system.debug('Wrapper padre-->'+objwrapperlstOppAccInfo);
        
        system.debug(':::Wrapper: '+lstwrapperOppAccInfo);
        for(wrapperOppAccInfo objWrapper : lstwrapperOppAccInfo){
            system.debug('---->'+objWrapper);
        }
    }
    
    //lista
    public class wrapperlstOppAccInfo{
        list<wrapperOppAccInfo> lstwrapperOppAccInfo {get; set;}
    }
    
    //objeto
    public class wrapperOppAccInfo{
        public Id idOpportunity {get; set;}
        public String strAccountName {get; set;}
        public String strAccountType {get; set;}
        public String strOppPhone {get; set;}
        public String strOppName {get; set;}
        public Integer intOppFiscalYear {get; set;}
    }
    
    /*
    * Method Name: contactAccountInformation
    * Description: Displays list Wrappers of Contact related to Account
    * Return Type: void
    * Parameters: Id idAccount
    */
    public static void contactAccountInformation(Id idAccount){
        List<Contact> lstContact = [SELECT Id, Account.Name, Account.Type, Account.Phone, Account.Industry, Account.Ownership, Name, Email, LeadSource, Title, Phone FROM Contact WHERE AccountId =: idAccount];
        List<wrapperContAccInfo> lstwrapperContAccInfo = new List<wrapperContAccInfo>();
        wrapperlstContAccInfo objwrapperlstContAccInfo = new wrapperlstContAccInfo();
        
        System.debug(objwrapperlstContAccInfo);
        System.debug(objwrapperlstContAccInfo.lstwrapperContAccInfo);
        for(Contact objContact : lstContact){
            wrapperContAccInfo objwrapperContAccInfo = new wrapperContAccInfo();
            system.debug('Objet: '+objContact);
            system.debug('Account.Name: '+objContact.Account.Name);
            system.debug('Account.Type: '+objContact.Account.Type);
            system.debug('Account.Industry: '+objContact.Account.Industry);
            system.debug('Account.Phone: '+objContact.Account.Phone);
            system.debug('Account.Ownership: '+objContact.Account.Ownership);
            system.debug('Contact Name: '+objContact.Name);
            system.debug('Contact Title: '+objContact.Title);
            system.debug('Contact Phone: '+objContact.Phone);
            system.debug('Contact Email: '+objContact.Email);
            
            objwrapperContAccInfo.idContact = objContact.Id;
            objwrapperContAccInfo.strAccountName = objContact.Account.Name;
            objwrapperContAccInfo.strAccountType = objContact.Account.Type;
            objwrapperContAccInfo.strAccountIndustry = objContact.Account.Industry;
            objwrapperContAccInfo.strAccountPhone = objContact.Account.Phone;
            objwrapperContAccInfo.strAccountOwnership = objContact.Account.Ownership;
            objwrapperContAccInfo.strContactName = objContact.Name;
            objwrapperContAccInfo.strContactTitle = objContact.Title;
            objwrapperContAccInfo.strContactPhone = objContact.Phone;
            objwrapperContAccInfo.strContactEmail = objContact.Email;
            
            System.debug(objwrapperContAccInfo);
            lstwrapperContAccInfo.add(objwrapperContAccInfo);
            //Hay dudas aquí
            //objwrapperlstContAccInfo.lstwrapperContAccInfo.add(objwrapperContAccInfo);
            /*objwrapperlstContAccInfo.lstwrapperContAccInfo.add(new wrapperContAccInfo(
                objwrapperContAccInfo.idContact = objContact.Id,
                objwrapperContAccInfo.strAccountName = objContact.Account.Name,
                objwrapperContAccInfo.strAccountType = objContact.Account.Type,
            	objwrapperContAccInfo.strAccountIndustry = objContact.Account.Industry,
            	objwrapperContAccInfo.strAccountPhone = objContact.Account.Phone,
            	objwrapperContAccInfo.strAccountOwnership = objContact.Account.Ownership,
            	objwrapperContAccInfo.strContactName = objContact.Name,
            	objwrapperContAccInfo.strContactTitle = objContact.Title,
            	objwrapperContAccInfo.strContactPhone = objContact.Phone,
            	objwrapperContAccInfo.strContactEmail = objContact.Email)
             );*/
        }
        
        objwrapperlstContAccInfo.lstwrapperContAccInfo = lstwrapperContAccInfo;
        system.debug(':::Wrapper padre::: ' +objwrapperlstContAccInfo);
        
        for(wrapperContAccInfo objWrapper : lstwrapperContAccInfo){
            system.debug('---->'+objWrapper);
        }
    }
	
    //List
    public class wrapperlstContAccInfo{
        public List<wrapperContAccInfo> lstwrapperContAccInfo {get; set;}
        
        /*public wrapperlstContAccInfo(List<wrapperContAccInfo> lstwrapperContAccInfo2){
            lstwrapperContAccInfo = lstwrapperContAccInfo2;
        }*/
    }

    //Object
    public class wrapperContAccInfo{
        public Id idContact {get; set;}
        public String strAccountName {get; set;}
        public String strAccountType {get; set;}
        public String strAccountIndustry {get; set;}
        public String strAccountPhone {get; set;}
        public String strAccountOwnership {get; set;}
        public String strContactName {get; set;}
        public String strContactTitle {get; set;}
        public String strContactPhone {get; set;}
        public String strContactEmail {get; set;}
        
        /*public wrapperContAccInfo(wrapperContAccInfo objWrapper){
            idContact = objWrapper.idContact;
        	strAccountName = objWrapper.strAccountName;
        	strAccountType = objWrapper.strAccountType;
       		strAccountIndustry = objWrapper.strAccountIndustry;
            strAccountPhone = objWrapper.strAccountPhone;
            strAccountOwnership = objWrapper.strAccountOwnership;
            strContactName = objWrapper.strContactName;
            strContactTitle = objWrapper.strContactTitle;
       		strContactPhone = objWrapper.strContactPhone;
        	strContactEmail = objWrapper.strContactEmail;
        }*/
    }
}
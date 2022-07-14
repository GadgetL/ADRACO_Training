/************************************************************************************************************
 * Name: ADR_Wrappers
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Creation the wrapper for Opportunity, Contact and Account.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Wrapper for Contact
*/
public class ADR_Wrappers {
    //Contenedora de colecciones de diferentes tipos de datos. Para acceder a diferentes objetos o datos complejos.
    public static void opportunityAccountInformation(Id idAcc){
        List<Opportunity> lstOpp = [SELECT Account.Name, Account.Type, Account.Phone, Id, Name, FiscalYear FROM Opportunity Where AccountId =:idAcc];
        list<wrapperOppAccInfo> lstWrapperOppAcc = new list<wrapperOppAccInfo>();
        for(Opportunity objOpp: lstOpp){
            wrapperOppAccInfo objwrapperOppAcc = new wrapperOppAccInfo();
            objwrapperOppAcc.idOpportunity = objOpp.id;
            objwrapperOppAcc.strAccountName = objOpp.Account.Name;
            objwrapperOppAcc.strAccountType = objOpp.Account.Type;
            objwrapperOppAcc.strAccountPhone = objOpp.Account.Phone;
            objwrapperOppAcc.strOppName = objOpp.Name;
            objwrapperOppAcc.intOppFiscal = objOpp.FiscalYear;
            system.debug('---> '+ objwrapperOppAcc);
            lstWrapperOppAcc.add(objwrapperOppAcc);
        }
        wrapperlstOppAccInfo objlstOppAccInfo = new wrapperlstOppAccInfo();
        objlstOppAccInfo.lstwrapperOppAccInfo = lstWrapperOppAcc;
        System.debug('Lista wrapper ' + objlstOppAccInfo);
    }
    
	/*Crear un wrapper que tenga 5 atributos de cuenta y 5 de contacto de diferente tipo
    crear un wrapper que tenga la lista de el primer wrapper
    crear un metodo donde se haga la consulta  de los contactos relacionados a la cuenta
	*/
    public static void ContactAccountInformation(Id idAcc){
        List<Contact> lstContact = [SELECT Account.Name, Account.Type, Account.Phone, Account.Website, Account.AccountNumber, 
                                    Id, Name, Email, Phone, Title FROM Contact Where AccountId =:idAcc];
        list<wrapperContAccoInfo> lstWrapperContAcc = new list<wrapperContAccoInfo>();
        for(Contact objCon : lstContact){
            wrapperContAccoInfo objwrapperContAccoInfo = new wrapperContAccoInfo();
            objwrapperContAccoInfo.idContact = objCon.Id;
            objwrapperContAccoInfo.strContactName = objCon.Name;
            objwrapperContAccoInfo.strContactPhone = objCon.Phone;
            objwrapperContAccoInfo.strContactEmail = objCon.Email;
            objwrapperContAccoInfo.strContactTitle = objCon.Title;
            objwrapperContAccoInfo.strAccountName = objCon.Account.Name;
            objwrapperContAccoInfo.strAccountType = objCon.Account.Type;
            objwrapperContAccoInfo.strAccountPhone = objCon.Account.Phone;
            objwrapperContAccoInfo.strAccountWebsite = objCon.Account.Website;
            objwrapperContAccoInfo.strAccountNumber = objCon.Account.AccountNumber;
            System.debug('--> ' +objwrapperContAccoInfo);
            lstWrapperContAcc.add(objwrapperContAccoInfo);
        }
        wrapperlstContAccInfo objlstContAccInfo = new wrapperlstContAccInfo();
        objlstContAccInfo.lstwrapperContAccInfo = lstWrapperContAcc;
    }
    
    public class wrapperOppAccInfo{
        public Id idOpportunity {get; set;}
        public string strAccountName {get; set;}
        public string strAccountType {get; set;}
        public string strAccountPhone {get; set;}
        public string strOppName {get; set;}
        public integer intOppFiscal {get; set;}
    }
    
    public class wrapperlstOppAccInfo{
        list<wrapperOppAccInfo> lstwrapperOppAccInfo {get; set;}
    }
    
    public class wrapperContAccoInfo{
        public Id idContact {get; set;}
        public string strContactName {get; set;}
        public string strContactEmail {get; set;}
        public string strContactPhone {get; set;}
        public string strContactTitle {get; set;}
        
        public string strAccountName {get; set;}
        public string strAccountType {get; set;}
        public string strAccountPhone {get; set;}
        public string strAccountWebsite {get; set;}
        public string strAccountNumber{get; set;}
    }
    
    public class wrapperlstContAccInfo{
        list<wrapperContAccoInfo> lstwrapperContAccInfo {get; set;}
    }
}
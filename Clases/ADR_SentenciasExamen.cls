public class ADR_SentenciasExamen {

    public static void InsertContact(){        
        Account objAcc= new Account();
        objAcc.Name ='Mario';
        objAcc.SLA__c='Silver';
        objAcc.SLASerialNumber__c ='7854';
        system.debug('::Before:---->'+objAcc);
        INSERT objAcc;
        system.debug('::After:---->'+objAcc);
        Account objAcc2= new Account();
        objAcc2.Name ='Pedro';
        objAcc2.SLA__c='Perla';
        objAcc2.SLASerialNumber__c ='7854';
        system.debug('::Before:---->'+objAcc2);
        INSERT objAcc2;
        system.debug('::After:---->'+objAcc2);
        Contact objCon= new Contact();
        objCon.MobilePhone ='2725887963';
        objCon.Languages__c='Español';
        objCon.Phone ='2258965351';
        objCon.LastName ='Perez';
        objCon.ADR_Departamentos__c ='Marketing';
        system.debug('::Before:---->'+objCon);
        INSERT objCon;
        system.debug('::After:---->'+objCon);
        Contact objCon2= new Contact();
        objCon2.MobilePhone ='2894522156';
        objCon2.Languages__c='Ingles';
        objCon2.Phone ='5896478251';
        objCon2.LastName ='Martinez';
        objCon2.ADR_Departamentos__c ='Marketing';
        system.debug('::Before:---->'+objCon2);
        INSERT objCon2;
        system.debug('::After:---->'+objCon2);
  
    }
    public static void UpdateContact(){
        Contact objContact =[SELECT MobilePhone,Phone,Languages__c FROM Contact WHERE Phone = '2258965351' LIMIT 1];
        objContact.Phone ='5598742312';
        objContact.MobilePhone ='5661365854';
        objContact.Languages__c ='Polaco';
        update objContact;
        system.debug('-UPDATE->'+objContact);
        Contact objContact2 =[SELECT Id,MobilePhone,Phone,Languages__c FROM Contact WHERE Phone = '5896478251' LIMIT 1];
        objContact2.Phone ='5598742312';
        objContact2.MobilePhone ='5661365854';
        objContact2.Languages__c ='Polaco';
        update objContact2;
        system.debug('-UPDATE->'+objContact2);
    }
	public static void deleteContact(){
        Contact objContact =[SELECT iD,Name FROM Contact WHERE Id='0038a00002sx6KgAAI' Limit 1];
        system.debug('-DELETE->'+objContact);
        DELETE objContact;
    }    
    
}
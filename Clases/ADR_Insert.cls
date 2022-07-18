public class ADR_Insert {
	public static void insertContact(){
        Contact objContact= new Contact();
        objContact.ADR_Name__c ='Luis';
        objContact.LastName='Perez';
        objContact.ADR_Email__c ='luis@gmail.com';
        INSERT objContact;
    }
}
/************************************************************************************************************
 * Name: ADR_DisplayTienda
 * Class test: ADR_Tienda2_Test
 * Autor: Francisco Reyes
 * Description: Consulting records of Tienda object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes	 | 16-06-2022			 | v0.1				 | Data consultation of records
*/
public class ADR_Tienda {
    public void informacionTienda(){
        for (ADR_Tienda__c objTda : [SELECT Name,ADR_Type__c,ADR_Fecha_Inaguracion__c FROM ADR_Tienda__c WHERE Name= 'Tienda Sur' OR  Name= 'Tienda norte']){
            System.debug(objTda.Name +'\n'+ objTda.ADR_Type__c +'\n'+objTda.ADR_Fecha_Inaguracion__c );   
        }
    }
    
    public void informacionTienda(string strTienda){
        ADR_Tienda__c objTda = [SELECT Name,ADR_Type__c,ADR_Fecha_Inaguracion__c FROM ADR_Tienda__c WHERE Name=: strTienda LIMIT 1];
        System.debug(objTda.Name +'\n'+ objTda.ADR_Type__c +'\n'+objTda.ADR_Fecha_Inaguracion__c);
    }
    
    public List<ADR_Tienda__c> informacionTiendas(){
        List<ADR_Tienda__c> lstTda = [SELECT Name,ADR_Type__c,ADR_Fecha_Inaguracion__c FROM ADR_Tienda__c WHERE Name= 'Tienda Sur' OR  Name= 'Tienda norte'];
        return lstTda;
    }
    
    public string tipoTienda(string strname){
        ADR_Tienda__c objTda = [SELECT Name,ADR_Type__c FROM ADR_Tienda__c WHERE Name=: strname LIMIT 1];
        return objTda.ADR_Type__c;
    }
    
    public void idTienda(){
        Map<id,string> mapTienda=new Map<id, string>();
        for(ADR_Tienda__c objtda : [SELECT id, Name FROM ADR_Tienda__c]){
            mapTienda.put(objtda.id, objtda.Name);            
        }
        System.debug('map '+ mapTienda);
    }

}

/*
Map<integer,string> mapTienda=new Map<integer, string>();
mapTienda.put(02393, 'tienda norte');
mapTienda.put(02394, 'tienda sur');
System.debug('maptienda-->' + mapTienda);
System.debug('maptienda-->' + mapTienda.get(02394));

*/
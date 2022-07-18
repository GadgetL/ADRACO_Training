/*************************************************************************************** 
* Name: ADR_SucursalesData
* Test: ADR_SucursalesData_Test
* Author: Valentín López Morales 
* Description: Required information to the filling out Sucursales
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 13-07-22 		  | v0.1 			| Connection with Wrapper Sucurcales
*/
public class ADR_SucursalesData {
    
   /*
    * Method Name: getData
    * Description: Bodega filling
    * Return Type: ADR_Sucursales.wrapperBodega
    * Parameters: 
    */
    public static ADR_Sucursales.wrapperBodega getData(){
        List<ADR_Sucursales.wrapperSucursal> lstSucursales = new List<ADR_Sucursales.wrapperSucursal>();
        ADR_Sucursales.wrapperBodega  wrappBodega= new ADR_Sucursales.wrapperBodega();
        wrappBodega.Nombre='ABC';
        wrappBodega.Clave=0001;
		wrappBodega.Direccion='Queretaro';
        wrappBodega.sucursales=lstSucursales;
        
        
        
       	List<ADR_Sucursales.wrapperDepartamento> lstDepartamentosSuc1 = new List<ADR_Sucursales.wrapperDepartamento>();
        List<ADR_Sucursales.wrapperDepartamento> lstDepartamentosSuc2 = new List<ADR_Sucursales.wrapperDepartamento>();
       
        // Llenado de  SatInformation 
        
        //Sat Information Dep1
        ADR_Sucursales.wrapperSat wrappSatInfoSuc1 = new ADR_Sucursales.wrapperSat();
        wrappSatInfoSuc1.RFC='TESLIOTY5678';
        wrappSatInfoSuc1.Direccion='Queretaro';
        wrappSatInfoSuc1.Razon='Sucursal SA de CV';
        wrappSatInfoSuc1.Clave=1001;
        //Sat Information Dep2
        ADR_Sucursales.wrapperSat wrappSatInfoSuc2 = new ADR_Sucursales.wrapperSat();
        wrappSatInfoSuc2.RFC='SADEROTY5678';
        wrappSatInfoSuc2.Direccion='Monterrey';
        wrappSatInfoSuc2.Razon='Sucursal 2 SA de CV';
        wrappSatInfoSuc2.Clave=1002;
        //------------------------------//
        
        //Llenado de Sucursales//
        ADR_Sucursales.wrapperSucursal wrappSucursal= new ADR_Sucursales.wrapperSucursal();
        wrappSucursal.Nombre='SUCA';
        wrappSucursal.Direccion='Guadalajara';
        wrappSucursal.IdSucursal=5678;
        wrappSucursal.departamentos=lstDepartamentosSuc1;
        wrappSucursal.satInfo=wrappSatInfoSuc1;
        lstSucursales.add(wrappSucursal);
        
        //Sucursal 2
        wrappSucursal= new ADR_Sucursales.wrapperSucursal();
        wrappSucursal.Nombre='SUCB';
        wrappSucursal.Direccion='Monterrey';
        wrappSucursal.IdSucursal=5679;
        wrappSucursal.departamentos=lstDepartamentosSuc2;
        wrappSucursal.satInfo=wrappSatInfoSuc2;
        lstSucursales.add(wrappSucursal);
        //----------------------------------//
        //Llenado de Departamentos//
        List<ADR_Sucursales.wrapperJefe> lstWrappJefesSuc1Dep1 = new  List<ADR_Sucursales.wrapperJefe> ();
        List<ADR_Sucursales.wrapperJefe> lstWrappJefesSuc2Dep1 = new  List<ADR_Sucursales.wrapperJefe> ();
        ADR_Sucursales.wrapperDepartamento wrappDepartamentoSuc1  = new  ADR_Sucursales.wrapperDepartamento();
        wrappDepartamentoSuc1.Nombre='DepA0';
        wrappDepartamentoSuc1.Clave=34567;
        wrappDepartamentoSuc1.jefes=lstWrappJefesSuc1Dep1;
        lstDepartamentosSuc1.add(wrappDepartamentoSuc1);
        
        ADR_Sucursales.wrapperDepartamento wrappDepartamentoSuc2  = new  ADR_Sucursales.wrapperDepartamento();
        wrappDepartamentoSuc2.Nombre='DepB0';
        wrappDepartamentoSuc2.Clave=34568;
        wrappDepartamentoSuc2.jefes=lstWrappJefesSuc2Dep1;
        lstDepartamentosSuc2.add(wrappDepartamentoSuc2);
        
        //Llenado de Jefes
        ADR_Sucursales.wrapperAsistente wrappAssJefeSuc1Dep1= new ADR_Sucursales.wrapperAsistente();
        wrappAssJefeSuc1Dep1.Nombre='Diana';
        ADR_Sucursales.wrapperAsistente wrappAssJefeSuc2Dep1= new ADR_Sucursales.wrapperAsistente();
        wrappAssJefeSuc2Dep1.Nombre='Lorena';
        
        ADR_Sucursales.wrapperJefe wrappJefeSuc1Dep1= new ADR_Sucursales.wrapperJefe();
        wrappJefeSuc1Dep1.Nombre='Jesus';
        wrappJefeSuc1Dep1.Area='Calidad';
        wrappJefeSuc1Dep1.Clave =2345;
        wrappJefeSuc1Dep1.asistente=wrappAssJefeSuc1Dep1;
        lstWrappJefesSuc1Dep1.add(wrappJefeSuc1Dep1);
        
        ADR_Sucursales.wrapperJefe wrappJefeSuc2Dep1= new ADR_Sucursales.wrapperJefe();
         wrappJefeSuc2Dep1.Nombre='Rodrigo';
         wrappJefeSuc2Dep1.Area='Produccion';
         wrappJefeSuc2Dep1.Clave =2346;
        wrappJefeSuc2Dep1.asistente=wrappAssJefeSuc2Dep1;
        
         lstWrappJefesSuc2Dep1.add(wrappJefeSuc2Dep1);
        return wrappBodega;
    }
}
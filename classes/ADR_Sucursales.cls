/*************************************************************************************** 
* Name: ADR_Sucursales
* Test: ADR_Sucursales_Test
* Author: Valentín López Morales 
* Description: The required information to Sucursales
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 13-07-22 		  | v0.1 			| Conection with Sucursales 
*/ 
global with sharing class ADR_Sucursales {
    global class wrapperBodega{
        public string Nombre { get; set;}
        public Integer Clave { get; set; }
        public String Direccion { get; set; }
        public List<wrapperSucursal> sucursales { get; set; }
    }
    
    global class wrapperSucursal{
        public Integer IdSucursal { get; set; }
        public string Nombre { get; set;}
        public String Direccion { get; set; }
        public List<wrapperDepartamento> Departamentos { get; set; }
        public wrapperSat satInfo { get; set; }
    }
    
    global class wrapperDepartamento{
        public Integer Clave { get; set; }
        public string Nombre { get; set;}
        public List<wrapperJefe> jefes { get; set; }
    }
    
    global class wrapperJefe{
        public Integer Clave { get; set; }
        public string Nombre { get; set;}
        public String Area { get; set; }
        public wrapperAsistente asistente { get; set;}
    }
    
    global class wrapperAsistente{
        public string Nombre { get; set;}
        
    }
    
    global class wrapperSat{
        public Integer Clave { get; set; }
        public String RFC { get; set; }
        public string Direccion { get; set;}
        public String Razon { get; set; }
    }

}
/*************************************************************************************** 
* Name: ADR_Terminal
* Test: ADR_Terminal_Test
* Author: Valentín López Morales 
* Description: The required information to Terminal
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 09-07-22 		  | v0.1 			| Conection with Terminal
*/ 
global with sharing class ADR_Terminal {
    global class wrapperTerminal{
        public string Nombre { get; set;}
        public String Ubicacion{ get; set; }
        public Integer Codigo{ get; set; }
        public List<wrapperRuta> rutas { get; set; }
    }
    
    global class wrapperRuta{
        public Integer Codigo { get; set; }
        public string Nombre { get; set;}
        public String Destino { get; set; }
        public List<wrapperCamion> camiones { get; set; }
    }
    
    global class wrapperCamion{
        public String Tipo { get; set; }
        public string Nombre { get; set;}
        public Integer Codigo { get; set; }
        public List<wrapperChofer> choferes { get; set; }
        public wrapperDestino destino { get; set; }
    }
    
    global class wrapperChofer{
        public string Nombre { get; set;}
        public string CURP { get; set;}
        public Integer Codigo { get; set; }
        public String Turno { get; set; }
        public wrapperAyudante ayudante { get; set;}
    }
    
    global class wrapperAyudante{
        public string Nombre { get; set;}
        public Integer Codigo { get; set; }
        
    }
    
    global class wrapperDestino{
        public String Nombre { get; set; }
        public String HoraLlegada{ get; set; }
    }
}
/*************************************************************************************** 
* Name: ADR_Supervicion
* Test: ADR_Supervicion_Test
* Author: Valentín López Morales 
* Description: The required information to supervicion
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 09-07-22 		  | v0.1 			| Conection with Supervicion 
*/ 
global with sharing class ADR_Supervicion {
    global class wrapperSupervicion{
        public string Nombre { get; set;}
        public Integer Codigo{ get; set; }
        public List<wrapperEscuela> Escuelas { get; set; }
    }
    
    global class wrapperEscuela{
        public Integer Codigo { get; set; }
        public string Nombre { get; set;}
        public List<wrapperMaestro> Maestros { get; set; }
        public wrapperDirector Director { get; set; }
    }
    
    global class wrapperMaestro{
        public string Nombre { get; set;}
        public Integer Codigo { get; set; }
        public wrapperGrupo Grupo { get; set; }
    }
    
    global class wrapperGrupo{
        public string Nombre { get; set;}
        public Integer Codigo { get; set; }
        public List<wrapperAlumno> Alumnos { get; set;}
    }
    
    global class wrapperAlumno{
        public string Nombre { get; set;}
        public Integer Codigo { get; set; }
        
    }
    
    global class wrapperDirector{
        public String Nombre { get; set; }
        public Integer Codigo{ get; set; }
    }
}
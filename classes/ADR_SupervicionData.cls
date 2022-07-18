/*************************************************************************************** 
* Name: ADR_SupervicionData
* Test: ADR_SupervicionData_Test
* Author: Valentín López Morales 
* Description: Required information to the filling out Supervicion
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 09-07-22 		  | v0.1 			| Connection with Wrapper Supervicion
*/
public class ADR_SupervicionData {
    
   /*
    * Method Name: getData
    * Description: Supervicion filling
    * Return Type: ADR_Supervicion.wrapperSupervicion
    * Parameters: 
    */
    public static ADR_Supervicion.wrapperSupervicion getData(){
        List<ADR_Supervicion.wrapperEscuela> lstEscuelas = new List<ADR_Supervicion.wrapperEscuela>();
        ADR_Supervicion.wrapperSupervicion  wrappSupervicion= new ADR_Supervicion.wrapperSupervicion();
        wrappSupervicion.Nombre='Supervicion A';
        wrappSupervicion.Codigo=0001;
        wrappSupervicion.Escuelas=lstEscuelas;
        
        
        
       	List<ADR_Supervicion.wrapperMaestro> lstMaestros1 = new List<ADR_Supervicion.wrapperMaestro>();
        List<ADR_Supervicion.wrapperMaestro> lstMaestros2 = new List<ADR_Supervicion.wrapperMaestro>();
       
        // Llenado de  Director 
        
        //Director 1
        ADR_Supervicion.wrapperDirector wrappDirector1 = new ADR_Supervicion.wrapperDirector();
        wrappDirector1.Nombre='Pepe';
        wrappDirector1.Codigo=1001;
        //Director 2
        ADR_Supervicion.wrapperDirector wrappDirector2 = new ADR_Supervicion.wrapperDirector();
        wrappDirector2.Nombre='Paco';
        wrappDirector2.Codigo=1002;
        //------------------------------//
        
        //Llenado de Escuelas//
        ADR_Supervicion.wrapperEscuela wrappEscuela= new ADR_Supervicion.wrapperEscuela();
        wrappEscuela.Nombre='Primaria';
        wrappEscuela.Codigo=5678;
        wrappEscuela.Maestros=lstMaestros1;
        wrappEscuela.Director=wrappDirector1;
        lstEscuelas.add(wrappEscuela);
        
        //Escuela 2
        wrappEscuela= new ADR_Supervicion.wrapperEscuela();
        wrappEscuela.Nombre='Secundaria';
        wrappEscuela.Codigo=5679;
        wrappEscuela.Maestros=lstMaestros2;
        wrappEscuela.Director=wrappDirector2;
        lstEscuelas.add(wrappEscuela);
        //----------------------------------//
        //Llenado de Maestross//
        ADR_Supervicion.wrapperGrupo wrappGrupo1 = new  ADR_Supervicion.wrapperGrupo();
        ADR_Supervicion.wrapperGrupo wrappGrupo2 = new  ADR_Supervicion.wrapperGrupo();
        ADR_Supervicion.wrapperGrupo wrappGrupo3 = new  ADR_Supervicion.wrapperGrupo();
        ADR_Supervicion.wrapperGrupo wrappGrupo4 = new  ADR_Supervicion.wrapperGrupo();
        
        ADR_Supervicion.wrapperMaestro wrappMaestro1  = new  ADR_Supervicion.wrapperMaestro();
        wrappMaestro1.Nombre='Maestro Jesus';
        wrappMaestro1.Codigo=34567;
        wrappMaestro1.Grupo=wrappGrupo1;
        lstMaestros1.add(wrappMaestro1);
        
        ADR_Supervicion.wrapperMaestro wrappMaestro2  = new  ADR_Supervicion.wrapperMaestro();
        wrappMaestro2.Nombre='Maestra Nancy';
        wrappMaestro2.Codigo=34568;
        wrappMaestro2.Grupo=wrappGrupo2;
        lstMaestros1.add(wrappMaestro2);
        
        ADR_Supervicion.wrapperMaestro wrappMaestro3  = new  ADR_Supervicion.wrapperMaestro();
        wrappMaestro3.Nombre='Maestro Patricio';
        wrappMaestro3.Codigo=05464;
        wrappMaestro3.Grupo=wrappGrupo3;
        lstMaestros2.add(wrappMaestro3);
        
        ADR_Supervicion.wrapperMaestro wrappMaestro4  = new  ADR_Supervicion.wrapperMaestro();
        wrappMaestro4.Nombre='Maestra Irma';
        wrappMaestro4.Codigo=7896;
        wrappMaestro4.Grupo=wrappGrupo4;
        lstMaestros2.add(wrappMaestro4);
        
        
        //Llenado de Alumnos
        List<ADR_Supervicion.wrapperAlumno> lstWrappAlumnos1= new List<ADR_Supervicion.wrapperAlumno>();
        List<ADR_Supervicion.wrapperAlumno> lstWrappAlumnos2= new List<ADR_Supervicion.wrapperAlumno>();
        List<ADR_Supervicion.wrapperAlumno> lstWrappAlumnos3= new List<ADR_Supervicion.wrapperAlumno>();
        List<ADR_Supervicion.wrapperAlumno> lstWrappAlumnos4= new List<ADR_Supervicion.wrapperAlumno>();
        
        ADR_Supervicion.wrapperAlumno wrappAlumno1= new ADR_Supervicion.wrapperAlumno();
        wrappAlumno1.Nombre='Alma';
        wrappAlumno1.Codigo=2968;
        lstWrappAlumnos1.add(wrappAlumno1);
        ADR_Supervicion.wrapperAlumno wrappAlumno2= new ADR_Supervicion.wrapperAlumno();
        wrappAlumno2.Nombre='Josefina';
        wrappAlumno2.Codigo=5896;
        lstWrappAlumnos1.add(wrappAlumno2);
        
        ADR_Supervicion.wrapperAlumno wrappAlumno3= new ADR_Supervicion.wrapperAlumno();
        wrappAlumno3.Nombre='Ruben';
        wrappAlumno3.Codigo=2586;
        lstWrappAlumnos2.add(wrappAlumno3);
        ADR_Supervicion.wrapperAlumno wrappAlumno4= new ADR_Supervicion.wrapperAlumno();
        wrappAlumno4.Nombre='Edwin';
        wrappAlumno4.Codigo=7896;
        lstWrappAlumnos2.add(wrappAlumno4);
        
        ADR_Supervicion.wrapperAlumno wrappAlumno5= new ADR_Supervicion.wrapperAlumno();
        wrappAlumno5.Nombre='Esteban';
        wrappAlumno5.Codigo=2968;
        lstWrappAlumnos3.add(wrappAlumno5);
        ADR_Supervicion.wrapperAlumno wrappAlumno6= new ADR_Supervicion.wrapperAlumno();
        wrappAlumno6.Nombre='Diana';
        wrappAlumno6.Codigo=5896;
        lstWrappAlumnos3.add(wrappAlumno6);
        
        ADR_Supervicion.wrapperAlumno wrappAlumno7= new ADR_Supervicion.wrapperAlumno();
        wrappAlumno7.Nombre='Mayra';
        wrappAlumno7.Codigo=2586;
        lstWrappAlumnos4.add(wrappAlumno7);
        ADR_Supervicion.wrapperAlumno wrappAlumno8= new ADR_Supervicion.wrapperAlumno();
        wrappAlumno8.Nombre='Rumualdo';
        wrappAlumno8.Codigo=7896;
        lstWrappAlumnos4.add(wrappAlumno8);
        
        //Llenado de Grupo
        
        wrappGrupo1.Nombre='Grupo A';
        wrappGrupo1.Codigo =2345;
        wrappGrupo1.Alumnos=lstWrappAlumnos1;
        
      
        wrappGrupo2.Nombre='Grupo B';
        wrappGrupo2.Codigo =2346;
        wrappGrupo2.Alumnos=lstWrappAlumnos2;
        
        wrappGrupo3.Nombre='Grupo C';
        wrappGrupo3.Codigo =0753;
        wrappGrupo3.Alumnos=lstWrappAlumnos3;
        
      
        wrappGrupo4.Nombre='Grupo D';
        wrappGrupo4.Codigo =8809;
        wrappGrupo4.Alumnos=lstWrappAlumnos4;
        
        return wrappSupervicion;
    }
}
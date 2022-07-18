public class ADR_EscuelasData {
	public static ADR_Escuelas.wrapperSupervicion getData(){
    //Llenado de supervicion
    List<ADR_Escuelas.wrapperEscuelas> lstEscuelas = new List<ADR_Escuelas.wrapperEscuelas>();  
    	ADR_Escuelas.wrapperSupervicion  wrappSupervicion= new ADR_Escuelas.wrapperSupervicion();
        wrappSupervicion.Codigo=0001;
        wrappSupervicion.Nombre='Supervision Selectiva';
        wrappSupervicion.Escuelas=lstEscuelas;
       //Llenado de escuelas
       //Escuela 1 
      List<ADR_Escuelas.wrapperMaestros> lstMaestros = new List<ADR_Escuelas.wrapperMaestros>();
      List<ADR_Escuelas.wrapperMaestros> lstMaestros2 = new List<ADR_Escuelas.wrapperMaestros>();
      ADR_Escuelas.wrapperEscuelas  wrappEscuelas= new ADR_Escuelas.wrapperEscuelas();
      ADR_Escuelas.wrapperDirector  wrappDirector= new ADR_Escuelas.wrapperDirector();
      wrappEscuelas.Codigo=0101;
      wrappEscuelas.Nombre='Mars';  
      wrappEscuelas.Maestros=lstMaestros;
	  wrappDirector.Codigo=0501;
      wrappDirector.Nombre='Luis Alfonso Trujillo Duran';
      wrappEscuelas.Director=wrappDirector;
      lstEscuelas.add(wrappEscuelas);
      //Escuela 2 
	  wrappEscuelas= new ADR_Escuelas.wrapperEscuelas();
	  wrappDirector= new ADR_Escuelas.wrapperDirector();
      wrappEscuelas.Codigo=0102;
      wrappEscuelas.Nombre='Vole';  
      wrappEscuelas.Maestros=lstMaestros2;
	  wrappDirector.Codigo=0502;
      wrappDirector.Nombre='Maria Angelica Mendoza Castro';
      wrappEscuelas.Director=wrappDirector;
      lstEscuelas.add(wrappEscuelas);
        
        
      //Llenado de maestros
      //Maestro 1 Escuela 1 
      ADR_Escuelas.wrapperMaestros  wrappMaestros= new ADR_Escuelas.wrapperMaestros();
      wrappMaestros.Codigo=01001;
      wrappMaestros.Nombre='Luis';  
      ADR_Escuelas.wrapperGrupo  wrappGrupo= new ADR_Escuelas.wrapperGrupo();
      List<ADR_Escuelas.wrapperAlumnos> lstAlumnos = new List<ADR_Escuelas.wrapperAlumnos>();
      wrappGrupo.Grado='Primero';
      wrappGrupo.Letra='A';
      wrappGrupo.Alumnos=lstAlumnos;
      wrappMaestros.Grupo=wrappGrupo;
      lstMaestros.add(wrappMaestros); 
        
      //Maestro 2 Escuela 1 
      wrappMaestros= new ADR_Escuelas.wrapperMaestros();
      wrappMaestros.Codigo=01002;
      wrappMaestros.Nombre='Maria';  
      wrappGrupo= new ADR_Escuelas.wrapperGrupo();
      List<ADR_Escuelas.wrapperAlumnos> lstAlumnos2 = new List<ADR_Escuelas.wrapperAlumnos>();
      wrappGrupo.Grado='Primero';
      wrappGrupo.Letra='B';
      wrappGrupo.Alumnos=lstAlumnos2;
      wrappMaestros.Grupo=wrappGrupo;
      lstMaestros.add(wrappMaestros);  
        
      //Maestro 1 Escuela 2 
      wrappMaestros= new ADR_Escuelas.wrapperMaestros();
      wrappMaestros.Codigo=01003;
      wrappMaestros.Nombre='Lourdes';  
      wrappGrupo= new ADR_Escuelas.wrapperGrupo();
      List<ADR_Escuelas.wrapperAlumnos> lstAlumnos3 = new List<ADR_Escuelas.wrapperAlumnos>();
      wrappGrupo.Grado='Segundo';
      wrappGrupo.Letra='A';
      wrappGrupo.Alumnos=lstAlumnos3;
      wrappMaestros.Grupo=wrappGrupo;
      lstMaestros2.add(wrappMaestros);

      //Maestro 2 Escuela 2 
      wrappMaestros= new ADR_Escuelas.wrapperMaestros();
      wrappMaestros.Codigo=01004;
      wrappMaestros.Nombre='Miguels';  
      wrappGrupo= new ADR_Escuelas.wrapperGrupo();
      List<ADR_Escuelas.wrapperAlumnos> lstAlumnos4 = new List<ADR_Escuelas.wrapperAlumnos>();
      wrappGrupo.Grado='Segundo';
      wrappGrupo.Letra='B';
      wrappGrupo.Alumnos=lstAlumnos4;
      wrappMaestros.Grupo=wrappGrupo;
      lstMaestros2.add(wrappMaestros);
        
        
      //Alumnos Grupo 1 Escuela 1 Division 1
      ADR_Escuelas.wrapperAlumnos  wrappAlumnos= new ADR_Escuelas.wrapperAlumnos();
      wrappAlumnos.Codigo=010004;
      wrappAlumnos.Nombre='Fernando';
      lstAlumnos.add(wrappAlumnos);  
        
      wrappAlumnos= new ADR_Escuelas.wrapperAlumnos();
      wrappAlumnos.Codigo=010005;
      wrappAlumnos.Nombre='Maria';
      lstAlumnos.add(wrappAlumnos); 
      
      //Alumnos Grupo 2 Escuela 1 Division 1
      wrappAlumnos= new ADR_Escuelas.wrapperAlumnos();
      wrappAlumnos.Codigo=010006;
      wrappAlumnos.Nombre='Pablo';
      lstAlumnos2.add(wrappAlumnos);  
        
      wrappAlumnos= new ADR_Escuelas.wrapperAlumnos();
      wrappAlumnos.Codigo=010007;
      wrappAlumnos.Nombre='Paula';
      lstAlumnos2.add(wrappAlumnos); 
        
      //Alumnos Grupo 1 Escuela 2 Division 1
      wrappAlumnos= new ADR_Escuelas.wrapperAlumnos();
      wrappAlumnos.Codigo=010008;
      wrappAlumnos.Nombre='Jorge';
      lstAlumnos3.add(wrappAlumnos);  
        
      wrappAlumnos= new ADR_Escuelas.wrapperAlumnos();
      wrappAlumnos.Codigo=010009;
      wrappAlumnos.Nombre='Gerogette';
      lstAlumnos3.add(wrappAlumnos); 
        
      //Alumnos Grupo 2 Escuela 2 Division 1
      wrappAlumnos= new ADR_Escuelas.wrapperAlumnos();
      wrappAlumnos.Codigo=010010;
      wrappAlumnos.Nombre='Maya';
      lstAlumnos4.add(wrappAlumnos);  
        
      wrappAlumnos= new ADR_Escuelas.wrapperAlumnos();
      wrappAlumnos.Codigo=010011;
      wrappAlumnos.Nombre='Itzel';
      lstAlumnos4.add(wrappAlumnos);   
        
       
    
        
      return  wrappSupervicion;
    }
}
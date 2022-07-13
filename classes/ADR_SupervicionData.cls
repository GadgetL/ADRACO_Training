public class ADR_SupervicionData {
    public static ADR_Supervicion.wrapperSupervicion getData(){
        
        List<ADR_Supervicion.wrapperEscuela> lstEscuelas = new List<ADR_Supervicion.wrapperEscuela>();
        ADR_Supervicion.wrapperSupervicion  wrappSupervicion= new ADR_Supervicion.wrapperSupervicion();
        wrappSupervicion.Nombre='Escuelita bonita';
        wrappSupervicion.Codigo=0001;
        for(integer x=0;x<2;x++){
            ADR_Supervicion.wrapperEscuela escuela= new ADR_Supervicion.wrapperEscuela();
            List<ADR_Supervicion.wrapperMaestro> lstMaestros = new List<ADR_Supervicion.wrapperMaestro>();
            ADR_Supervicion.wrapperDirector director= new ADR_Supervicion.wrapperDirector();
            escuela.Nombre='Escuela'+x;
            escuela.Codigo=12312+x;
            
            
            for(integer y=0;y<2;y++){
               ADR_Supervicion.wrapperMaestro maestro= new ADR_Supervicion.wrapperMaestro();
               ADR_Supervicion.wrapperGrupo grupo= new ADR_Supervicion.wrapperGrupo();
               List<ADR_Supervicion.wrapperAlumno> lstAlumnos = new List<ADR_Supervicion.wrapperAlumno>();
               maestro.Nombre='Maestro'+y;
               maestro.Codigo=1321+y;
               grupo.Nombre=y+'A';
               grupo.Codigo=1231+y;
                for(integer z=0;z<2;z++){
                    ADR_Supervicion.wrapperAlumno alumno= new ADR_Supervicion.wrapperAlumno();
                    alumno.Nombre='Alumno'+z;
                    alumno.Codigo=12313+z;
                    lstAlumnos.add(alumno);
                }
                grupo.Alumnos=lstAlumnos;
                maestro.grupo=grupo;
              
            	lstMaestros.add(maestro);   
                
            }
            director.Nombre='Director'+x;
           	director.Codigo=123123+x;
            escuela.director=director;
            escuela.maestros=lstMaestros;
            lstEscuelas.add(escuela);
        }
        wrappSupervicion.escuelas=lstEscuelas;
        return wrappSupervicion;
    }
}
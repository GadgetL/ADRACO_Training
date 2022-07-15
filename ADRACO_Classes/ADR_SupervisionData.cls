public class ADR_SupervisionData {
    public static ADR_Supervision.wrapperSupervision getData() {
        //Alumnos (8)
        List<ADR_Supervision.wrapperAlumno> lstWrappAlumno = new List<ADR_Supervision.wrapperAlumno>();
        for(Integer i = 1; i < 9; i++) {
            ADR_Supervision.wrapperAlumno wrappAlumno = new ADR_Supervision.wrapperAlumno();
            wrappAlumno.Nombre = 'Alumno ' + String.valueOf(i);
            wrappAlumno.Clave = i + 100;

            lstWrappAlumno.add(wrappAlumno);
        }

        //Grupos (4)
        List<ADR_Supervision.wrapperGrupo> lstWrappGrupo = new List<ADR_Supervision.wrapperGrupo>();
        for(Integer i = 1; i < 5; i++) {
            ADR_Supervision.wrapperGrupo wrappGrupo = new ADR_Supervision.wrapperGrupo();
            wrappGrupo.Nombre = 'Grupo ' + String.valueOf(i);
            wrappGrupo.Clave = i + 200;

            wrappGrupo.Alumnos = new List<ADR_Supervision.wrapperAlumno>();
            wrappGrupo.Alumnos.add(lstWrappAlumno.get((i * 2) - 2));
            wrappGrupo.Alumnos.add(lstWrappAlumno.get((i * 2) - 1));

            lstWrappGrupo.add(wrappGrupo);
        }

        //Maestros (4)
        List<ADR_Supervision.wrapperMaestro> lstWrappMaestro = new List<ADR_Supervision.wrapperMaestro>();
        for(Integer i = 1; i < 5; i++) {
            ADR_Supervision.wrapperMaestro wrappMaestro = new ADR_Supervision.wrapperMaestro();
            wrappMaestro.Nombre = 'Maestro ' + String.valueOf(i);
            wrappMaestro.Clave = i + 300;

            wrappMaestro.Grupo = lstWrappGrupo.get(i - 1);

            lstWrappMaestro.add(wrappMaestro);
        }

        //Directores (2)
        List<ADR_Supervision.wrapperDirector> lstWrappDirector = new List<ADR_Supervision.wrapperDirector>();
        for(Integer i = 1; i < 3; i++) {
            ADR_Supervision.wrapperDirector wrappDirector = new ADR_Supervision.wrapperDirector();
            wrappDirector.Nombre = 'Director ' + String.valueOf(i);
            wrappDirector.Clave = i + 400;

            lstWrappDirector.add(wrappDirector);
        }

        //Escuelas (2)
        List<ADR_Supervision.wrapperEscuela> lstWrappEscuela = new List<ADR_Supervision.wrapperEscuela>();
        for(Integer i = 1; i < 3; i++) {
            ADR_Supervision.wrapperEscuela wrappEscuela = new ADR_Supervision.wrapperEscuela();
            wrappEscuela.Nombre = 'Escuela ' + String.valueOf(i);
            wrappEscuela.Clave = i + 500;

            wrappEscuela.Director = lstWrappDirector.get(i - 1);

            wrappEscuela.Maestros =  new List<ADR_Supervision.wrapperMaestro>();
            wrappEscuela.Maestros.add(lstWrappMaestro.get((i * 2) - 2));
            wrappEscuela.Maestros.add(lstWrappMaestro.get((i * 2) - 1));

            lstWrappEscuela.add(wrappEscuela);
        }

        //Supervision (1)
        ADR_Supervision.wrapperSupervision wrappSupervision = new ADR_Supervision.wrapperSupervision();
        wrappSupervision.Nombre = 'Supervision 1';
        wrappSupervision.Clave = 601;
        wrappSupervision.Escuelas = lstWrappEscuela;

        return wrappSupervision;
    }
}

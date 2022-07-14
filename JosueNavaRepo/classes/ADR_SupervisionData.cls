public class ADR_SupervisionData {
    public static ADR_Supervision.wrapperSupervision getData(){
        
        //creacion de listas
        List<ADR_Supervision.wrapperEscuelas> lstEscuelas = new List<ADR_Supervision.wrapperEscuelas>();
        List<ADR_Supervision.wrapperMaestros> lstMaestrosUno = new List<ADR_Supervision.wrapperMaestros>();
        List<ADR_Supervision.wrapperMaestros> lstMaestrosDos = new List<ADR_Supervision.wrapperMaestros>();
        List<ADR_Supervision.wrapperAlumnos> lstAlumnosGrupo1 = new List<ADR_Supervision.wrapperAlumnos>();
        List<ADR_Supervision.wrapperAlumnos> lstAlumnosGrupo2 = new List<ADR_Supervision.wrapperAlumnos>();
        
        //llenado de datos supervision
        ADR_Supervision.wrapperSupervision wrappSuper = new ADR_Supervision.wrapperSupervision();
        wrappSuper.Nombre = 'Supervision regional norte';
        wrappSuper.Clave = 'SEGOB-SEP-5235';
        wrappSuper.escuelas = lstEscuelas;
        
        //directores
        ADR_Supervision.wrapperDirector directorEsc1 = new ADR_Supervision.wrapperDirector();
        directorEsc1.Nombre = 'Juan';
        directorEsc1.Clave = 'JU2031';
        ADR_Supervision.wrapperDirector directorEsc2 = new ADR_Supervision.wrapperDirector();
        directorEsc2.Nombre = 'Pedro';
        directorEsc2.Clave = 'PE1502';
        //llenado de escuelas
        ADR_Supervision.wrapperEscuelas escuela1 = new ADR_Supervision.wrapperEscuelas();
        escuela1.Nombre = 'Escuela Primaria centro';
        escuela1.Clave = 'EPC-200';
        escuela1.director = directorEsc1;
        escuela1.maestros = lstMaestrosUno;
        lstEscuelas.add(escuela1);
        
        ADR_Supervision.wrapperEscuelas escuela2 = new ADR_Supervision.wrapperEscuelas();
        escuela2.Nombre = 'Escuela Primaria Sur';
        escuela2.Clave = 'EPS-250';
        escuela2.director = directorEsc2;
        escuela2.maestros = lstMaestrosDos;
        lstEscuelas.add(escuela2);
        
        //alumnos
		ADR_Supervision.wrapperAlumnos alumno1Grupo1 = new ADR_Supervision.wrapperAlumnos();
        alumno1Grupo1.Nombre = 'Pepito';
        alumno1Grupo1.Codigo = '253214PP';
        lstAlumnosGrupo1.add(alumno1Grupo1);
        
        ADR_Supervision.wrapperAlumnos alumno2Grupo1 = new ADR_Supervision.wrapperAlumnos();
        alumno2Grupo1.Nombre = 'Jorge';
        alumno2Grupo1.Codigo = 'JOR23546';
        lstAlumnosGrupo1.add(alumno2Grupo1);
        
        ADR_Supervision.wrapperAlumnos alumno1Grupo2 = new ADR_Supervision.wrapperAlumnos();
        alumno1Grupo2.Nombre = 'Humberto';
        alumno1Grupo2.Codigo = 'HUMG5245';
        lstAlumnosGrupo2.add(alumno1Grupo2);
        
        ADR_Supervision.wrapperAlumnos alumno2Grupo2 = new ADR_Supervision.wrapperAlumnos();
        alumno2Grupo2.Nombre = 'Jaimito';
        alumno2Grupo2.Codigo = 'JITO02562';
        lstAlumnosGrupo2.add(alumno2Grupo2);
        
        
        //grupos
        ADR_Supervision.wrapperGrupo grupo1 = new ADR_Supervision.wrapperGrupo();
        grupo1.Grado = 'Primer grado';
        grupo1.Turno = 'Vespertino';
        grupo1.alumnos = lstAlumnosGrupo1;
        
        ADR_Supervision.wrapperGrupo grupo2 = new ADR_Supervision.wrapperGrupo();
        grupo2.Grado = 'Segundo grado';
        grupo2.Turno = 'Matutino';
        grupo2.alumnos = lstAlumnosGrupo2;
        
        //maestros
        ADR_Supervision.wrapperMaestros maestro1Esc1 = new ADR_Supervision.wrapperMaestros();
        maestro1Esc1.Nombre = 'Esteban';
        maestro1Esc1.Clave = '32151';
        maestro1Esc1.grupo = grupo1;
        lstMaestrosUno.add(maestro1Esc1);
        
        ADR_Supervision.wrapperMaestros maestro2Esc1 = new ADR_Supervision.wrapperMaestros();
        maestro2Esc1.Nombre = 'Jose Ignacio';
        maestro2Esc1.Clave = '54789';
        maestro2Esc1.grupo = grupo1;
        lstMaestrosUno.add(maestro2Esc1);
        
        ADR_Supervision.wrapperMaestros maestro1Esc2 = new ADR_Supervision.wrapperMaestros();
        maestro1Esc2.Nombre = 'Alberto';
        maestro1Esc2.Clave = '47595';
        maestro1Esc2.grupo = grupo2;
        
         lstMaestrosDos.add(maestro1Esc2);
        ADR_Supervision.wrapperMaestros maestro2Esc2 = new ADR_Supervision.wrapperMaestros();
        maestro2Esc2.Nombre = 'Ramiro';
        maestro2Esc2.Clave = '87930';
        maestro2Esc2.grupo = grupo2;
        
        lstMaestrosDos.add(maestro2Esc2);
        return wrappSuper;
    }
}
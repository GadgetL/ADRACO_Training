public class ADR_SupervicionData {
    public static ADR_Supervicion.wrapperSupervision getData() {
        ADR_Supervicion.wrapperSupervision wrapperSupervision = new ADR_Supervicion.wrapperSupervision();
        List<ADR_Supervicion.wrapperEscuela> lstescuela = new List<ADR_Supervicion.wrapperEscuela>();

        wrapperSupervision.Codigo = 001;
        wrapperSupervision.Nombre = 'Supervicion 1';
        wrapperSupervision.escuela= lstescuela;

        ADR_Supervicion.wrapperEscuela escuela1 = new ADR_Supervicion.wrapperEscuela();
        ADR_Supervicion.wrapperEscuela escuela2 = new ADR_Supervicion.wrapperEscuela();
        
        ADR_Supervicion.wrapperDirector director1 = new ADR_Supervicion.wrapperDirector();
        ADR_Supervicion.wrapperDirector director2 = new ADR_Supervicion.wrapperDirector();
    
        List<ADR_Supervicion.wrapperMaestro> lstmaestro1 = new List<ADR_Supervicion.wrapperMaestro>();
        List<ADR_Supervicion.wrapperMaestro> lstmaestro2 = new List<ADR_Supervicion.wrapperMaestro>();
        escuela1.Codigo= 001;
        escuela1.Nombre = 'Vasco de Gama';
        escuela1.maestro = lstmaestro1;
        escuela1.director = director1;
        
        escuela2.Codigo = 002;
        escuela2.Nombre = 'Webster';
        escuela2.maestro = lstmaestro1;
        escuela2.director = director2;

        director1.Nombre = 'Salvador';
        director1.Codigo = 111;

        director2.Nombre = 'Ericka';
        director2.Codigo = 222;

        lstescuela.add(escuela1);
        lstescuela.add(escuela2);

        ADR_Supervicion.wrapperMaestro maestro1escuela1 = new  ADR_Supervicion.wrapperMaestro();
        ADR_Supervicion.wrapperMaestro maestro2escuela1 = new  ADR_Supervicion.wrapperMaestro();

        ADR_Supervicion.wrapperMaestro maestro1escuela2 = new  ADR_Supervicion.wrapperMaestro();
        ADR_Supervicion.wrapperMaestro maestro2escuela2 = new  ADR_Supervicion.wrapperMaestro();
        
        ADR_Supervicion.wrapperGrupo grupo1 = new ADR_Supervicion.wrapperGrupo();
        ADR_Supervicion.wrapperGrupo grupo2 = new ADR_Supervicion.wrapperGrupo();
        ADR_Supervicion.wrapperGrupo grupo3 = new ADR_Supervicion.wrapperGrupo();
        ADR_Supervicion.wrapperGrupo grupo4 = new ADR_Supervicion.wrapperGrupo();

        maestro1escuela1.Nombre = 'Juan';
        maestro1escuela1.Codigo = 011;
        maestro1escuela1.grupo = grupo1;
        
        maestro2escuela1.Nombre = 'Francisco';
        maestro2escuela1.Codigo = 012;
        maestro2escuela1.grupo = grupo2;

        maestro1escuela2.Nombre = 'Pedro';
        maestro1escuela2.Codigo = 021;
        maestro1escuela2.grupo = grupo3;

        maestro2escuela2.Nombre = 'Ivan';
        maestro2escuela2.Codigo = 022;
        maestro2escuela2.grupo = grupo4;

        lstmaestro1.add(maestro1escuela1);
        lstmaestro1.add(maestro2escuela1);
        lstmaestro2.add(maestro1escuela2);
        lstmaestro2.add(maestro2escuela2);
        
        List<ADR_Supervicion.wrapperAlumno> lstalumno1maestro1escuela1= new List<ADR_Supervicion.wrapperAlumno>();
        List<ADR_Supervicion.wrapperAlumno> lstalumno2maestro2escuela1= new List<ADR_Supervicion.wrapperAlumno>();

        List<ADR_Supervicion.wrapperAlumno> lstalumno3maestro1escuela2= new List<ADR_Supervicion.wrapperAlumno>();
        List<ADR_Supervicion.wrapperAlumno> lstalumno4maestro2escuela2= new List<ADR_Supervicion.wrapperAlumno>();

        grupo1.Codigo = 111;
        grupo1.Nombre = 'Historia';
        grupo1.alumno = lstalumno1maestro1escuela1;

        grupo2.Codigo = 112;
        grupo2.Nombre = 'Literatura';
        grupo2.alumno = lstalumno2maestro2escuela1;

        grupo3.Codigo = 211;
        grupo3.Nombre = 'Español';
        grupo3.alumno = lstalumno3maestro1escuela2;

        grupo4.Codigo = 212;
        grupo4.Nombre = 'Quimica';
        grupo4.alumno = lstalumno4maestro1escuela2;

        ADR_Supervicion.wrapperAlumno alumno1 = new ADR_Supervicion.wrapperAlumno();
        ADR_Supervicion.wrapperAlumno alumno2 = new ADR_Supervicion.wrapperAlumno();

        ADR_Supervicion.wrapperAlumno alumno3 = new ADR_Supervicion.wrapperAlumno();
        ADR_Supervicion.wrapperAlumno alumno4 = new ADR_Supervicion.wrapperAlumno();

        ADR_Supervicion.wrapperAlumno alumno5 = new ADR_Supervicion.wrapperAlumno();
        ADR_Supervicion.wrapperAlumno alumno6 = new ADR_Supervicion.wrapperAlumno();

        ADR_Supervicion.wrapperAlumno alumno7 = new ADR_Supervicion.wrapperAlumno();
        ADR_Supervicion.wrapperAlumno alumno8 = new ADR_Supervicion.wrapperAlumno();

        alumno1.Codigo = 1111;
        alumno1.Nombre = 'Josue';

        alumno2.Codigo = 1112;
        alumno2.Nombre = 'Alisa';

        alumno3.Codigo = 1121;
        alumno3.Nombre = 'Laura';

        alumno4.Codigo = 1122;
        alumno4.Nombre = 'Carlos';

        alumno5.Codigo = 2111;
        alumno5.Nombre = 'Manuel';

        alumno6.Codigo = 2112;
        alumno6.Nombre = 'Hugo';

        alumno7.Codigo = 2121;
        alumno7.Nombre = 'Victor';

        alumno7.Codigo = 2122;
        alumno7.Nombre = 'Angelica';


        lstalumno1maestro1escuela1.add(alumno1);
        lstalumno1maestro1escuela1.add(alumno2);
        lstalumno2maestro2escuela1.add(alumno3);
        lstalumno2maestro2escuela1.add(alumno4);
        lstalumno3maestro1escuela2.add(alumno5);
        lstalumno3maestro1escuela2.add(alumno6);
        lstalumno4maestro2escuela2.add(alumno7);
        lstalumno4maestro2escuela2.add(alumno8);



        return wrapperSupervision;
    }
}

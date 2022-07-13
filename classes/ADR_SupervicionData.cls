global class ADR_SupervicionData {
    public static ADR_Supervicion.wrapperSupervicion getData(){
        ADR_Supervicion.wrapperSupervicion wrapperSupervicion = new ADR_Supervicion.wrapperSupervicion();
        wrapperSupervicion.Nombre = 'Edomex';
        List<ADR_Supervicion.wrapperEscuela> lstEscuela = new List<ADR_Supervicion.wrapperEscuela>();
        ADR_Supervicion.wrapperEscuela wrapperEscuela = new ADR_Supervicion.wrapperEscuela();
        wrapperEscuela.Nombre = 'Preparatoria 5';
        ADR_Supervicion.wrapperDirector wrapperDirector = new ADR_Supervicion.wrapperDirector();
        wrapperDirector.Nombre = 'Raul';
        wrapperDirector.Matricula = 15100;
        wrapperEscuela.Director = wrapperDirector;
        List<ADR_Supervicion.wrapperMaestro> lstMaestro = new List<ADR_Supervicion.wrapperMaestro>();
        ADR_Supervicion.wrapperMaestro wrapperMaestro = new ADR_Supervicion.wrapperMaestro();
        wrapperMaestro.Nombre = 'Pablo';
        wrapperMaestro.Matricula = 18200;
        ADR_Supervicion.wrapperGrupo wrapperGrupo = new ADR_Supervicion.wrapperGrupo();
        wrapperGrupo.Nombre = 'M1';
        List<ADR_Supervicion.wrapperAlumno> lstAlumno =  new List<ADR_Supervicion.wrapperAlumno>();
        ADR_Supervicion.wrapperAlumno wrapperAlumno = new ADR_Supervicion.wrapperAlumno();
        wrapperAlumno.Nombre = 'Aaron';
        wrapperAlumno.Matricula = 1825600;
        lstAlumno.add(wrapperAlumno);
        ADR_Supervicion.wrapperAlumno wrapperAlumno2 = new ADR_Supervicion.wrapperAlumno();
        wrapperAlumno2.Nombre = 'Jaime';
        wrapperAlumno2.Matricula = 1825601;
        lstAlumno.add(wrapperAlumno2);
        wrapperGrupo.alumnos = lstAlumno;
        wrapperMaestro.Grupo=wrapperGrupo;
        lstMaestro.add(wrapperMaestro);
        wrapperEscuela.maestros = lstMaestro;
        //--------------------------------------
        
        wrapperMaestro = new ADR_Supervicion.wrapperMaestro();
        wrapperMaestro.Nombre = 'Andres';
        wrapperMaestro.Matricula = 18201;
        wrapperGrupo = new ADR_Supervicion.wrapperGrupo();
        wrapperGrupo.Nombre = 'M2';
        lstAlumno =  new List<ADR_Supervicion.wrapperAlumno>();
        wrapperAlumno = new ADR_Supervicion.wrapperAlumno();
        wrapperAlumno.Nombre = 'Fabian';
        wrapperAlumno.Matricula = 1825602;
        lstAlumno.add(wrapperAlumno);
        wrapperAlumno2 = new ADR_Supervicion.wrapperAlumno();
        wrapperAlumno2.Nombre = 'Marco';
        wrapperAlumno2.Matricula = 1825603;
        lstAlumno.add(wrapperAlumno2);
        wrapperGrupo.alumnos = lstAlumno;
        wrapperMaestro.Grupo=wrapperGrupo;
        lstMaestro.add(wrapperMaestro);
        wrapperEscuela.maestros = lstMaestro;
        lstEscuela.add(wrapperEscuela);
        
        
        wrapperEscuela = new ADR_Supervicion.wrapperEscuela();
        wrapperEscuela.Nombre = 'Preparatoria 6';
       	wrapperDirector = new ADR_Supervicion.wrapperDirector();
        wrapperDirector.Nombre = 'Andrea';
        wrapperDirector.Matricula = 15101;
        wrapperEscuela.Director = wrapperDirector;
        lstMaestro = new List<ADR_Supervicion.wrapperMaestro>();
        wrapperMaestro = new ADR_Supervicion.wrapperMaestro();
        wrapperMaestro.Nombre = 'Luis';
        wrapperMaestro.Matricula = 18210;
       	wrapperGrupo = new ADR_Supervicion.wrapperGrupo();
        wrapperGrupo.Nombre = 'M1';
        lstAlumno =  new List<ADR_Supervicion.wrapperAlumno>();
        wrapperAlumno = new ADR_Supervicion.wrapperAlumno();
        wrapperAlumno.Nombre = 'Hugo';
        wrapperAlumno.Matricula = 1825700;
        lstAlumno.add(wrapperAlumno);
        wrapperAlumno2 = new ADR_Supervicion.wrapperAlumno();
        wrapperAlumno2.Nombre = 'Karla';
        wrapperAlumno2.Matricula = 1825701;
        lstAlumno.add(wrapperAlumno2);
        wrapperGrupo.alumnos = lstAlumno;
        wrapperMaestro.Grupo=wrapperGrupo;
        lstMaestro.add(wrapperMaestro);
        wrapperEscuela.maestros = lstMaestro;
        //--------------------------------------
        
        wrapperMaestro = new ADR_Supervicion.wrapperMaestro();
        wrapperMaestro.Nombre = 'Miriam';
        wrapperMaestro.Matricula = 18211;
        wrapperGrupo = new ADR_Supervicion.wrapperGrupo();
        wrapperGrupo.Nombre = 'M2';
        lstAlumno =  new List<ADR_Supervicion.wrapperAlumno>();
        wrapperAlumno = new ADR_Supervicion.wrapperAlumno();
        wrapperAlumno.Nombre = 'Alan';
        wrapperAlumno.Matricula = 1825702;
        lstAlumno.add(wrapperAlumno);
        wrapperAlumno2 = new ADR_Supervicion.wrapperAlumno();
        wrapperAlumno2.Nombre = 'Dereck';
        wrapperAlumno2.Matricula = 1825703;
        lstAlumno.add(wrapperAlumno2);
        wrapperGrupo.alumnos = lstAlumno;
        wrapperMaestro.Grupo=wrapperGrupo;
        lstMaestro.add(wrapperMaestro);
        wrapperEscuela.maestros = lstMaestro;
        lstEscuela.add(wrapperEscuela);
        
        wrapperSupervicion.escuelas = lstEscuela;
        
        return wrapperSupervicion;
    }

}
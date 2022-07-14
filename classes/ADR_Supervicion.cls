global class ADR_Supervicion {
    global class wrapperSupervision{
        public Integer Codigo;
        public String Nombre;
        List<wrapperEscuela> escuela;
    }

    global class wrapperEscuela{
        public Integer Codigo;
        public String Nombre;
        List<wrapperMaestro> maestro;
        wrapperDirector director;
    }

    global class wrapperMaestro{
        public Integer Codigo;
        public String Nombre;
        wrapperGrupo grupo;
    }

    global class wrapperGrupo{
        public Integer Codigo;
        public String Nombre;
        List<wrapperAlumno> alumno;
    }

    global class wrapperAlumno{
        public Integer Codigo;
        public String Nombre;
        
    }

    global class wrapperDirector{
        public Integer Codigo;
        public String Nombre;
        
    }

}

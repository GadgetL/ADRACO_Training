global class ADR_Supervicion {
	global class wrapperSupervicion{
        public String Nombre {get;set;}
        public Integer Codigo {get;set;}
        public List<wrapperEscuela> escuelas {get;set;}
    }
    global class wrapperEscuela{
        public String Nombre {get;set;}
        public Integer Codigo {get;set;}
        public List<wrapperMaestro> maestros {get;set;}
        public wrapperDirector director {get;set;}
    }
    global class wrapperMaestro{
        public String Nombre {get;set;}
        public Integer Codigo {get;set;}      
        public wrapperGrupo grupo {get;set;}
        
        
    }
    global class wrapperGrupo{
        public String Nombre {get;set;}
        public Integer Codigo {get;set;}
        public List<wrapperAlumno> Alumnos {get;set;}
    }
    global class wrapperAlumno{
        public String Nombre {get;set;}
        public Integer Codigo {get;set;}

    }
    global class wrapperDirector{
        public String Nombre {get;set;}
        public Integer Codigo {get;set;}

    }
}
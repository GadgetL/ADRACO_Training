global class ADR_Supervicion {
    global class wrapperSupervicion{
        
        public String Nombre{get;set;}
        public List<wrapperEscuela> escuelas{get;set;}
    }
    global class wrapperEscuela{
        
        public String Nombre{get;set;}
        public List<wrapperMaestro> maestros{get;set;}
        public wrapperDirector Director{get;set;}
        
    }
    global class wrapperMaestro{
        
        public String Nombre{get;set;}
        public Integer Matricula{get;set;}
        public wrapperGrupo Grupo{get;set;}
        
        
        
    }
    global class wrapperGrupo{
        
        public String Nombre{get;set;}
        public List<wrapperAlumno> alumnos{get;set;}
        
    }
    global class wrapperDirector{
        
        public String Nombre{get;set;}
        public Integer Matricula{get;set;}
        
    }
    global class wrapperAlumno{
        
        public String Nombre{get;set;}
        public Integer Matricula{get;set;}
        
    }

}
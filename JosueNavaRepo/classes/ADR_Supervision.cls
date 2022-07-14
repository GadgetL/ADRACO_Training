global class ADR_Supervision {

    global class wrapperSupervision{
        public String Nombre{get; set;}
        public String Clave{get; set;}
        public List<wrapperEscuelas> escuelas{get; set;}
    }
    
    global class wrapperEscuelas{
        public String Nombre{get; set;}
        public String Clave{get; set;}
        public List<wrapperMaestros> maestros{get; set;}
        public wrapperDirector director{get; set;}
    }
    
    global class wrapperMaestros{
        public String Nombre{get; set;}
        public String Clave{get; set;}
        public wrapperGrupo grupo{get; set;}
        
    }
    
    global class wrapperDirector{
        public String Nombre{get; set;}
        public String Clave{get; set;}
        
    }
    
    global class wrapperGrupo{
        public String Grado{get; set;}
        public String Turno{get; set;}
       public List<wrapperAlumnos> alumnos{get; set;}
        
    }
    
    global class wrapperAlumnos{
        public String Nombre{get; set;}
        public String Codigo{get; set;}
        
    }
    
    
}
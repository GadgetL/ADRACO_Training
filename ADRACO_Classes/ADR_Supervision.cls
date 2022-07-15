global class ADR_Supervision {
    global class wrapperSupervision {
        public String Nombre {get; set;}
        public Integer Clave {get; set;}
        public List<wrapperEscuela> Escuelas {get; set;}
    }

    global class wrapperEscuela {
        public String Nombre {get; set;}
        public Integer Clave {get; set;}
        public wrapperDirector Director {get; set;}
        public List<wrapperMaestro> Maestros {get; set;}
    }

    global class wrapperDirector {
        public String Nombre {get; set;}
        public Integer Clave {get; set;}
    }

    global class wrapperMaestro {
        public String Nombre {get; set;}
        public Integer Clave {get; set;}
        public wrapperGrupo Grupo {get; set;}
    }

    global class wrapperGrupo {
        public String Nombre {get; set;}
        public Integer Clave {get; set;}
        public List<wrapperAlumno> Alumnos {get; set;}
    }

    global class wrapperAlumno {
        public String Nombre {get; set;}
        public Integer Clave {get; set;}
    }
}

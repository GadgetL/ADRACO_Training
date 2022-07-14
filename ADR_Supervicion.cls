/************************************************************************************************************
 * Name: ADR_Supervicion
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Create of wrapper object for to use in class ADR_SupervicionData.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| Create of wrapper
*/
global class ADR_Supervicion {
    global class wrapperSupervicion{
        public String Nombre {get; set;}
    	public String Codigo {get; set;}
        public list<wrapperEscuela> escuelas {get; set;}
    }
    global class wrapperEscuela{
        public String Nombre {get; set;}
    	public String Codigo {get; set;}
        public wrapperDirector director {get; set;}
        public list<wrapperMaestro> maestros {get; set;}
    }
    global class wrapperMaestro{
        public String Nombre {get; set;}
    	public String Codigo {get; set;}
        public wrapperGrupo grupos {get; set;}
    }
    global class wrapperDirector{
        public String Nombre {get; set;}
    	public String Codigo {get; set;}
    }
    global class wrapperGrupo{
        public String Nombre {get; set;}
    	public String Codigo {get; set;}
        public list<wrapperAlumnos> alumnos {get; set;}
    }
    global class wrapperAlumnos{
        public String Nombre {get; set;}
    	public String Codigo {get; set;}
    }

}
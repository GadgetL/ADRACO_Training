global class ADR_Terminal {
	global class wrapperTerminal{
        public String Nombre {get;set;}
        public Integer Codigo {get;set;}
        public String Ubicacion {get;set;}
        public List<wrapperRuta> rutas {get;set;}
    }
    global class wrapperRuta{
        public String Nombre {get;set;}
        public Integer Codigo {get;set;}
        public String Destino {get;set;}
        public List<wrapperCamion> camiones {get;set;}
    }
    global class wrapperCamion{
        public String Nombre {get;set;}
        public String Tipo {get;set;}
        public Integer Codigo {get;set;}      
        public List<wrapperChofer> choferes {get;set;}
        public wrapperDestino destino {get;set;}
        
    }
    global class wrapperChofer{
        public String Nombre {get;set;}
        public Integer Codigo {get;set;}
        public String CURP {get;set;}
        public String Turno {get;set;}
        public wrapperAyudante ayudante {get;set;}
    }
    global class wrapperAyudante{
        public String Nombre {get;set;}
        public Integer Codigo {get;set;}

    }
    global class wrapperDestino{
        public String Nombre {get;set;}
        public String HoraLlegada {get;set;}

    }
    
}
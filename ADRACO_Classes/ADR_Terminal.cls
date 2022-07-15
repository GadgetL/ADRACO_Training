global class ADR_Terminal {
    global class wrapperTerminal {
        public String Nombre {get; set;}
        public String Ubicacion {get; set;}
        public Integer Codigo {get; set;}
        public List<wrapperRuta> Rutas {get; set;}
    }

    global class wrapperRuta {
        public String Nombre {get; set;}
        public Integer Codigo {get; set;}
        public String Destino {get; set;}
        public List<wrapperCamion> Camiones {get; set;}
    }

    global class wrapperCamion {
        public String Tipo {get; set;}
        public String Nombre {get; set;}
        public Integer Codigo {get; set;}
        public List<wrapperChofer> Choferes {get; set;}
        public wrapperDestino Destino {get; set;}
    }

    global class wrapperChofer {
        public String Nombre {get; set;}
        public String CURP {get; set;}
        public Integer Codigo {get; set;}
        public String Turno {get; set;}
        public wrapperAyudante Ayudante {get; set;}
    }

    global class wrapperAyudante {
        public String Nombre {get; set;}
        public Integer Codigo {get; set;}
    }
    
    global class wrapperDestino {
        public String Nombre {get; set;}
        public Date HoraLlegada {get; set;}
    }
}

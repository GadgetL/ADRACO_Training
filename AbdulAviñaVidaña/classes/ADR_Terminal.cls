global class ADR_Terminal {
    global class wrapperTerminal{
        public String Nombre{get; set;}
        public String Ubicacion{get; set;}
        public String Codigo{get; set;}
        public List<wrapperRutas> rutas{get; set;}
    }
    
    global class wrapperRutas{
        public String Nombre{get; set;}
        public String Codigo{get; set;}
        public String Destino{get; set;}
        public List<wrapperCamiones> camiones{get; set;}
    }
    
    global class wrapperCamiones{
        public String Tipo{get; set;}
        public String Nombre{get; set;}
        public String Codigo{get; set;}
        public List<wrapperChoferes> choferes{get; set;}
        public wrapperDestino destino{get; set;}
    }
    
    global class wrapperChoferes{
        public String Nombre{get; set;}
        public String CURP{get; set;}
        public String Codigo{get; set;}
        public String Turno{get; set;}
        public wrapperAyudantes ayudante{get; set;}
        
    }
    
    global class wrapperAyudantes{
        public String Nombre{get; set;}
        public String Codigo{get; set;}
        
    }
    
    global class wrapperDestino{
        public String Nombre{get; set;}
        public Time HoraLlegada{get; set;}
        
    }

}
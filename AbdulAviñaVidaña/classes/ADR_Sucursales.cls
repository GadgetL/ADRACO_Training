global class ADR_Sucursales {
    global class wrapperBodega{
        public String Nombre{get; set;}
        public Integer clave{get; set;}
        public String Direccion{get; set;}
        public List<wrapperSucursal> sucursales{get; set;}
    }
    
    global class wrapperSucursal{
        public String Nombre{get; set;}
        public String Direccion{get; set;}
        public String IdSucursal{get; set;}
        public List<wrapperdepartamento> departamentos{get; set;}
        public wrapperSatInformation satInfo{get; set;}
    }
    global class wrapperDepartamento{
        public String Nombre{get; set;}
        public Integer Clave{get; set;}
        public List<wrapperJefe> jefes{get; set;}
    }
    
    global class wrapperSatInformation{
        public String RFC{get; set;}
        public String Direccion{get; set;}
        public String Razon{get; set;}
        public String Clave{get; set;}
    }
    
    global class wrapperJefe{
        public String NombreJefe{get; set;}
        public String Area{get; set;}
        public String Clave{get; set;}
        public wrapperAsistente asistente{get; set;}
    }
    
    global class wrapperAsistente{
        public String Nombre{get; set;}
    }
}
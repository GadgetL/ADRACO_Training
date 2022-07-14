global class  ADR_Sucursales {
    
    global class wrapperBodega {
        public String Nombre { get; set;}
        public Integer Clave { get; set;}
        public String Direccion { get; set;}
        public List<wrapperSucursal> sucursales { get; set;}
    }

    global class wrapperSucursal{
        public String Nnombre { get; set;}
        public String Direccion { get; set;}
        public String IdSucursal { get; set;}
        public List<wrapperDepartamento> departamento { get; set;}
        public wrapperSatInformation satInfo {get; set;}

    }

    global class wrapperDepartamento{
        public String Nombre { get; set;}
        public Integer Clave { get; set;}
        public List<wrapperJefe> jefe { get; set;}

    }

    global class wrapperSatInformation{
        public String RFC { get; set;}
        public String Direccion { get; set;}
        public String Razon { get; set;}
        public String Clave { get; set;}
    }

    global class wrapperJefe{
        public String Nombre { get; set;}
        public String Puesto { get; set;}
        public String Clave { get; set;}
        public wrapperAsistente asistente { get; set;}
    }

    global class wrapperAsistente{
        public String Nombre { get; set;}
        
    }
}

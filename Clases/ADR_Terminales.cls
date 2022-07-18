global class ADR_Terminales {
    
 global class wrapperTerminal{
     public String Nombre  { get; set; }
     public String Ubicacion  { get; set; }
     public Integer Codigo  { get; set; }
     public List<wrapperRutas> Rutas  { get; set; }
 }
  global class wrapperRutas{
     public String Nombre  { get; set; }
     public Integer Codigo  { get; set; }
     public String Destino  { get; set; }
     public List<wrapperCamiones> Camiones  { get; set; }
 }   
    global class wrapperCamiones{
     public String Tipo  { get; set; }
     public String Nombre  { get; set; }
     public Integer Codigo  { get; set; }
     public List<wrapperChoferes> Choferes  { get; set; }
     public wrapperDestino Destino { get; set; }
    }
    
     global class wrapperChoferes{
     public String Nombre  { get; set; }
     public String CURP  { get; set; }
     public integer Codigo  { get; set; }
     public String Turno  { get; set; }
     public wrapperAyudante Ayudante { get; set; }
    }
    global class wrapperAyudante{
      public String NombreAyudante  { get; set; }   
      public Integer Codigo  { get; set; }   
    }
    
     global class wrapperDestino{
      public String Nombre  { get; set; }   
      public String HoraLLegada  { get; set; }   
    }
    
}
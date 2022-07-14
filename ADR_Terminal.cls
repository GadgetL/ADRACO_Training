/************************************************************************************************************
 * Name: ADR_Terminal
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Create of wrapper object for to use in class ADR_TerminalData.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| Create of wrapper
*/
global class ADR_Terminal {
  global class wrapperTerminal{
    public String Nombre {get; set;}
    public String Ubicacion {get; set;}
    public String Codigo {get; set;}
    public List<wrapperRutas> rutas {get; set;}
  }
  global class wrapperRutas{
    public String Nombre {get; set;}
    public String Codigo {get; set;}
    public String Destino {get; set;}
    public List<wrapperCamiones> camiones {get; set;}
  }
  global class wrapperCamiones{
    public String Tipo {get; set;}
    public String Nombre {get; set;}
    public String Codigo {get; set;}
    public List<wrapperChoferes> choferes {get; set;}
    public wrapperDestino destino {get; set;}
  }
  global class wrapperChoferes{
    public String Nombre {get; set;}
    public String CURP {get; set;}
    public String Codigo {get; set;}
    public String Turno {get; set;}
    public wrapperAyudante ayudante {get; set;}
  }
  global class wrapperAyudante{
    public String Nombre {get; set;}
    public String Codigo {get; set;}
  }
  global class wrapperDestino{
    public String Nombre {get; set;}
    public String HoraLlegada {get; set;}
  }

}
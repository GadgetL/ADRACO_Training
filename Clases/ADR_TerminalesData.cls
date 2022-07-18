public class ADR_TerminalesData {
	public static ADR_Terminales.wrapperTerminal getData(){
        List<ADR_Terminales.wrapperRutas> lstRutas = new List<ADR_Terminales.wrapperRutas>();
        ADR_Terminales.wrapperTerminal  wrappTerminal= new ADR_Terminales.wrapperTerminal();
        wrappTerminal.Nombre='Terminal Grande';
        wrappTerminal.Codigo=0001;
		wrappTerminal.Ubicacion='Queretaro';
        wrappTerminal.Rutas=lstRutas;
                
        
        //Llenado de Rutas//
       	List<ADR_Terminales.wrapperCamiones> lstCamiones = new List<ADR_Terminales.wrapperCamiones>();
        ADR_Terminales.wrapperRutas  wrappRutas= new ADR_Terminales.wrapperRutas();
        wrappRutas.Nombre='Ruta Corta';
        wrappRutas.Codigo=101;
        wrappRutas.Camiones=lstCamiones;
        lstRutas.add(wrappRutas);
        
        //Ruta 2
        List<ADR_Terminales.wrapperCamiones> lstCamiones2 = new List<ADR_Terminales.wrapperCamiones>();
        wrappRutas= new ADR_Terminales.wrapperRutas();
        wrappRutas.Nombre='Ruta Larga';
        wrappRutas.Codigo=10;
        wrappRutas.Camiones=lstCamiones2;
        lstRutas.add(wrappRutas);
        
        //Llenado de Camiones//
        ////Camion 1 Ruta 1
       	List<ADR_Terminales.wrapperChoferes> lstChoferes = new List<ADR_Terminales.wrapperChoferes>();
        ADR_Terminales.wrapperCamiones  wrappCamiones= new ADR_Terminales.wrapperCamiones();
        wrappCamiones.Tipo='Normal';
       	wrappCamiones.Codigo=100;
        wrappCamiones.Nombre='Camion 1 Ruta 1';
        ADR_Terminales.wrapperDestino  wrappDestino= new ADR_Terminales.wrapperDestino();
        wrappDestino.Nombre='Ixtac';
        wrappDestino.HoraLlegada='14:00';
        wrappCamiones.Destino=wrappDestino;
        wrappCamiones.Choferes=lstChoferes;
        lstCamiones.add(wrappCamiones);
        
        //Camion 2 Ruta 1
        List<ADR_Terminales.wrapperChoferes> lstChoferes2 = new List<ADR_Terminales.wrapperChoferes>();
        wrappCamiones= new ADR_Terminales.wrapperCamiones();
        wrappCamiones.Tipo='Premium';
       	wrappCamiones.Codigo=1005;
        wrappCamiones.Nombre='Camion 2 Ruta 1';
        wrappDestino= new ADR_Terminales.wrapperDestino();
        wrappDestino.Nombre='Orizaba';
        wrappDestino.HoraLlegada='15:00';
        wrappCamiones.Destino=wrappDestino;
        wrappCamiones.Choferes=lstChoferes2;
        lstCamiones.add(wrappCamiones);
        
        //Camion 3 Ruta 1
        List<ADR_Terminales.wrapperChoferes> lstChoferes3 = new List<ADR_Terminales.wrapperChoferes>();
        wrappCamiones= new ADR_Terminales.wrapperCamiones();
        wrappCamiones.Tipo='Normal';
       	wrappCamiones.Codigo=1015;
        wrappCamiones.Nombre='Camion 3 Ruta 1';
        wrappDestino= new ADR_Terminales.wrapperDestino();
        wrappDestino.Nombre='Cordoba';
        wrappDestino.HoraLlegada='19:00';
        wrappCamiones.Destino=wrappDestino;
        wrappCamiones.Choferes=lstChoferes3;
        lstCamiones.add(wrappCamiones);
        
        
        ////Camion 1 Ruta 2
       	List<ADR_Terminales.wrapperChoferes> lstChoferes4 = new List<ADR_Terminales.wrapperChoferes>();
        wrappCamiones= new ADR_Terminales.wrapperCamiones();
        wrappCamiones.Tipo='Premium';
       	wrappCamiones.Codigo=1030;
        wrappCamiones.Nombre='Camion 1 Ruta 2';
        wrappDestino= new ADR_Terminales.wrapperDestino();
        wrappDestino.Nombre='Puebla';
        wrappDestino.HoraLlegada='21:00';
        wrappCamiones.Destino=wrappDestino;
        wrappCamiones.Choferes=lstChoferes4;
        lstCamiones2.add(wrappCamiones);
        
        //Camion 2 Ruta 2
        List<ADR_Terminales.wrapperChoferes> lstChoferes5 = new List<ADR_Terminales.wrapperChoferes>();
        wrappCamiones= new ADR_Terminales.wrapperCamiones();
        wrappCamiones.Tipo='Normal';
       	wrappCamiones.Codigo=1025;
        wrappCamiones.Nombre='Camion 2 Ruta 2';
         wrappDestino= new ADR_Terminales.wrapperDestino();
        wrappDestino.Nombre='CDMX';
        wrappDestino.HoraLlegada='11:00';
        wrappCamiones.Destino=wrappDestino;
        wrappCamiones.Choferes=lstChoferes5;
        lstCamiones2.add(wrappCamiones);
        
        //Camion 3 Ruta 2
        List<ADR_Terminales.wrapperChoferes> lstChoferes6 = new List<ADR_Terminales.wrapperChoferes>();
        wrappCamiones= new ADR_Terminales.wrapperCamiones();
        wrappCamiones.Tipo='Premium';
       	wrappCamiones.Codigo=1040;
        wrappCamiones.Nombre='Camion 3 Ruta 2';
         wrappDestino= new ADR_Terminales.wrapperDestino();
        wrappDestino.Nombre='Oaxaca';
        wrappDestino.HoraLlegada='16:30';
        wrappCamiones.Destino=wrappDestino;
        wrappCamiones.Choferes=lstChoferes6;
        
        lstCamiones2.add(wrappCamiones);
        //----------------------------------//
        //Llenado de Choferes//
        //Llenado de Chofer 1 Camion 1 Ruta 1//
        ADR_Terminales.wrapperChoferes  wrappChoferes= new ADR_Terminales.wrapperChoferes();
        wrappChoferes.Nombre='Antonia';
       	wrappChoferes.CURP='LOMA770826MCXPRN38';
        wrappChoferes.Codigo=00001;
        wrappChoferes.Turno='Matutino';
        ADR_Terminales.wrapperAyudante  wrappAyudante= new ADR_Terminales.wrapperAyudante();
        wrappAyudante.NombreAyudante='Miguel';
        wrappAyudante.Codigo=010001;
        wrappChoferes.Ayudante=wrappAyudante;
        lstChoferes.add(wrappChoferes);
        
        //Llenado de Chofer 1 Camion 2 Ruta 1//
        wrappChoferes= new ADR_Terminales.wrapperChoferes();
        wrappChoferes.Nombre='Gerardo';
       	wrappChoferes.CURP='OEMG770826HCSRNR74';
        wrappChoferes.Codigo=00002;
        wrappChoferes.Turno='Vespertino';
        wrappAyudante= new ADR_Terminales.wrapperAyudante();
        wrappAyudante.NombreAyudante='Lucia';
        wrappAyudante.Codigo=010002;
        wrappChoferes.Ayudante=wrappAyudante;
        lstChoferes2.add(wrappChoferes);
        
        //Llenado de Chofer 1 Camion 3 Ruta 1//
        wrappChoferes= new ADR_Terminales.wrapperChoferes();
        wrappChoferes.Nombre='LETICIA';
       	wrappChoferes.CURP='EIML770826MMNSRT99';
        wrappChoferes.Codigo=00003;
        wrappChoferes.Turno='Matutino';
        wrappAyudante= new ADR_Terminales.wrapperAyudante();
        wrappAyudante.NombreAyudante='Maritza';
        wrappAyudante.Codigo=010001;
        wrappChoferes.Ayudante=wrappAyudante;
        lstChoferes3.add(wrappChoferes);
        
        //Llenado de Chofer 1 Camion 1 Ruta 2//
        wrappChoferes= new ADR_Terminales.wrapperChoferes();
        wrappChoferes.Nombre='Francisco Javier';
       	wrappChoferes.CURP='GACF770826HMCRSR59';
        wrappChoferes.Codigo=00004;
        wrappChoferes.Turno='Matutino';
        wrappAyudante= new ADR_Terminales.wrapperAyudante();
        wrappAyudante.NombreAyudante='Juan';
        wrappAyudante.Codigo=010001;
        wrappChoferes.Ayudante=wrappAyudante;
        lstChoferes4.add(wrappChoferes);
        
        //Llenado de Chofer 1 Camion 2 Ruta 2//
        wrappChoferes= new ADR_Terminales.wrapperChoferes();
        wrappChoferes.Nombre='Rafael';
       	wrappChoferes.CURP='AURR770826MTSGYF66';
        wrappChoferes.Codigo=00005;
        wrappChoferes.Turno='Vespertino';
        wrappAyudante= new ADR_Terminales.wrapperAyudante();
        wrappAyudante.NombreAyudante='Luis';
        wrappAyudante.Codigo=010002;
        wrappChoferes.Ayudante=wrappAyudante;
        lstChoferes5.add(wrappChoferes);
        
        //Llenado de Chofer 1 Camion 3 Ruta 2//
        wrappChoferes= new ADR_Terminales.wrapperChoferes();
        wrappChoferes.Nombre='Juan Carlos';
       	wrappChoferes.CURP='DIGJ770826HNLZNN87';
        wrappChoferes.Codigo=00006;
        wrappChoferes.Turno='Matutino';
        wrappAyudante= new ADR_Terminales.wrapperAyudante();
        wrappAyudante.NombreAyudante='Angel';
        wrappAyudante.Codigo=010001;
        wrappChoferes.Ayudante=wrappAyudante;
        lstChoferes6.add(wrappChoferes);
        
        return wrappTerminal;
    }
}
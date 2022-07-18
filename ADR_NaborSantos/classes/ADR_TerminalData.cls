public class ADR_TerminalData {
    public static ADR_Terminal.wrapperTerminal getData(){
        List<ADR_Terminal.wrapperRuta> lstRutas = new List<ADR_Terminal.wrapperRuta>();
        //Terminal
        ADR_Terminal.wrapperTerminal  wrappTerminal = new ADR_Terminal.wrapperTerminal();
        wrappTerminal.Nombre = 'Terminal Uno';
        wrappTerminal.Ubicacion = 'Calle 1, Col.2';
        wrappTerminal.Codigo = 'TERM001';
        wrappTerminal.rutas = lstRutas;
        //Rutas
        ADR_Terminal.wrapperRuta wrappRuta1 = new ADR_Terminal.wrapperRuta();
        ADR_Terminal.wrapperRuta wrappRuta2 = new ADR_Terminal.wrapperRuta();
        //Lista de Camiones 
        List<ADR_Terminal.wrapperCamion> lstCamiones = new List<ADR_Terminal.wrapperCamion>();       
        
        wrappRuta1.Nombre = 'Ruta 001';
        wrappRuta1.Codigo = 'R001';
        wrappRuta1.Destino = 'Dest1';
        wrappRuta1.camiones = lstCamiones;       
        wrappRuta2.Nombre = 'Ruta 002';
        wrappRuta2.Codigo = 'R002';
        wrappRuta2.Destino = 'Dest2';
        wrappRuta2.camiones = lstCamiones;        
        lstRutas.add(wrappRuta1);
        lstRutas.add(wrappRuta2);
        
        //Camiones
		ADR_Terminal.wrapperCamion wrappCamion1 = new ADR_Terminal.wrapperCamion();
		ADR_Terminal.wrapperCamion wrappCamion2 = new ADR_Terminal.wrapperCamion();        
       	ADR_Terminal.wrapperCamion wrappCamion3 = new ADR_Terminal.wrapperCamion();
        //Destino
        ADR_Terminal.wrapperDestino wrappDestino = new ADR_Terminal.wrapperDestino();
        //Lista de choferes
        List<ADR_Terminal.wrapperChofer> lstChoferes = new List<ADR_Terminal.wrapperChofer>();          
        wrappDestino.Nombre = 'Destino 001';
        wrappDestino.HoraLlegada = '12:30am';
        
        wrappCamion1.Nombre = 'Camion01';
        wrappCamion1.Tipo = 'Premium';
        wrappCamion1.Codigo = 'CM001';
        wrappCamion1.destino = wrappDestino;
        wrappCamion1.choferes = lstChoferes;
        wrappCamion2.Nombre = 'Camion02';
        wrappCamion2.Tipo = 'Premium';
        wrappCamion2.Codigo = 'CM002';
        wrappCamion2.destino = wrappDestino;
        wrappCamion2.choferes = lstChoferes;
        wrappCamion3.Nombre = 'Camion03';
        wrappCamion3.Tipo = 'Normal';
        wrappCamion3.Codigo = 'CM003';
        wrappCamion3.destino = wrappDestino;
        wrappCamion3.choferes = lstChoferes;
        lstCamiones.add(wrappCamion1);
        lstCamiones.add(wrappCamion2);
        lstCamiones.add(wrappCamion3);
        
        //Choferes
        ADR_Terminal.wrapperChofer wrapperChofer1 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperChofer wrapperChofer2 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante wrappAyudante = new ADR_Terminal.wrapperAyudante();
		//Ayudante
		wrappAyudante.Nombre = 'Ayudante';
		wrappAyudante.Codigo = 'AY001';
        
        wrapperChofer1.Nombre = 'Chofer01';
        wrapperChofer1.CURP = 'RELQ122434RTD';
        wrapperChofer1.Codigo ='CHF001';
        wrapperChofer1.Turno = 'Vespertino';
        wrapperChofer1.ayudante = wrappAyudante;
        wrapperChofer2.Nombre = 'Chofer02';
        wrapperChofer2.CURP = 'RELQ122434RTD';
        wrapperChofer2.Codigo ='CHF002';
        wrapperChofer2.Turno = 'Matutino';
        wrapperChofer2.ayudante = wrappAyudante;
        
        lstChoferes.add(wrapperChofer1);
        lstChoferes.add(wrapperChofer2);
        return wrappTerminal;
    }
}
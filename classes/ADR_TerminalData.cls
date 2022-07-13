public class ADR_TerminalData {
	public static ADR_Terminal.wrapperTerminal getData(){
        List<ADR_Terminal.wrapperRuta> lstRutas = new List<ADR_Terminal.wrapperRuta>();
        ADR_Terminal.wrapperTerminal  wrappTerminal= new ADR_Terminal.wrapperTerminal();
        wrappTerminal.Nombre='Terminal Estrella';
        wrappTerminal.Codigo=0001;
		wrappTerminal.Ubicacion='Morelos';
        wrappTerminal.rutas=lstRutas;
        
        
        
       	List<ADR_Terminal.wrapperCamion> lstCamiones1 = new List<ADR_Terminal.wrapperCamion>();
        List<ADR_Terminal.wrapperCamion> lstCamiones2 = new List<ADR_Terminal.wrapperCamion>();
       
        
        //Destino1
        ADR_Terminal.wrapperDestino wrappDest1 = new ADR_Terminal.wrapperDestino();
        wrappDest1.Nombre='Queretaro';
        wrappDest1.HoraLlegada='11:20';
        //Destino2
        ADR_Terminal.wrapperDestino wrappDest2 = new ADR_Terminal.wrapperDestino();
        wrappDest2.Nombre='Aguascalientes';
        wrappDest2.HoraLlegada='15:40';
        //------------------------------//
        //
        List<ADR_Terminal.wrapperChofer> lstChoferCam1 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstChoferCam2 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstChoferCam3 = new List<ADR_Terminal.wrapperChofer>();
        
        
        //Choferes///
        
        ////camion 1 choferes
       	ADR_Terminal.wrapperChofer wrappChofer11 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante1 = new ADR_Terminal.wrapperAyudante();
        wrappChofer11.Nombre='Gerardo';
        wrappChofer11.Curp='ASDD123412ADS';
        wrappChofer11.Codigo=1323123;
        wrappChofer11.Turno='Vespertino';
       	ayudante1.Nombre='ayudante01';
        ayudante1.Codigo=3123123;
        wrappChofer11.ayudante=ayudante1;
        lstChoferCam1.add(wrappChofer11);
        //Choferes2///
        ADR_Terminal.wrapperAyudante ayudante2 = new ADR_Terminal.wrapperAyudante();
       	ADR_Terminal.wrapperChofer wrappChofer12 = new ADR_Terminal.wrapperChofer();
        wrappChofer12.Nombre='Alan';
        wrappChofer12.Curp='AKDASJDD123412ADS';
        wrappChofer12.Codigo=1323123;
        wrappChofer12.Turno='Matutino';
        ayudante2.Nombre='ayudante02';
        ayudante2.Codigo=3123123;
        wrappChofer12.ayudante=ayudante2;
        lstChoferCam1.add(wrappChofer12);
                ////camion 2 choferes
       	ADR_Terminal.wrapperChofer wrappChofer21 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante3 = new ADR_Terminal.wrapperAyudante();
        wrappChofer21.Nombre='Abraham';
        wrappChofer21.Curp='JASDKADASQ231DAS';
        wrappChofer21.Codigo=1323123;
        wrappChofer21.Turno='Vespertino';
        ayudante3.Nombre='ayudante03';
        ayudante3.Codigo=3123123;
        wrappChofer21.ayudante=ayudante3;
        lstChoferCam2.add(wrappChofer21);
        //Choferes2///
       	ADR_Terminal.wrapperChofer wrappChofer22 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante4 = new ADR_Terminal.wrapperAyudante();
        wrappChofer22.Nombre='Javier';
        wrappChofer22.Curp='CCNSDJA123SD';
        wrappChofer22.Codigo=1323123;
        wrappChofer22.Turno='Matutino';
        ayudante4.Nombre='ayudante04';
        ayudante4.Codigo=3123123;
        wrappChofer22.ayudante=ayudante4;
        lstChoferCam2.add(wrappChofer22);
        ////camion 3 choferes
       	ADR_Terminal.wrapperChofer wrappChofer31 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante5 = new ADR_Terminal.wrapperAyudante();
        wrappChofer31.Nombre='Mauricio';
        wrappChofer31.Curp='DKASIUSD123DAS';
        wrappChofer31.Codigo=1323123;
        wrappChofer31.Turno='Vespertino';
        ayudante5.Nombre='ayudante05';
        ayudante5.Codigo=3123123;
        wrappChofer31.ayudante=ayudante5;
        lstChoferCam3.add(wrappChofer31);
        //Choferes2///
       	ADR_Terminal.wrapperChofer wrappChofer32 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante6 = new ADR_Terminal.wrapperAyudante();
        wrappChofer32.Nombre='Gorsli';
        wrappChofer32.Curp='CCNSDJA123SD';
        wrappChofer32.Codigo=1323123;
        wrappChofer32.Turno='Matutino';
        ayudante6.Nombre='ayudante06';
        ayudante6.Codigo=3123123;
        wrappChofer32.ayudante=ayudante6;
        lstChoferCam3.add(wrappChofer32);
        ////Camion0101
        ADR_Terminal.wrapperCamion wrappCamion11 = new ADR_Terminal.wrapperCamion();
        wrappCamion11.Nombre='El veloz';
        wrappCamion11.Tipo='Normal';
        wrappCamion11.Codigo=1323123;
        wrappCamion11.destino=wrappDest1;
        wrappCamion11.choferes=lstChoferCam1;
        lstCamiones1.add(wrappCamion11);
        
        //Camion0102
        ADR_Terminal.wrapperCamion wrappCamion12 = new ADR_Terminal.wrapperCamion();
        
        wrappCamion12.Nombre='El Fino';
        wrappCamion12.Tipo='Premium';
        wrappCamion12.Codigo=1323123;
        wrappCamion12.destino=wrappDest2;
        wrappCamion12.choferes=lstChoferCam2;
        lstCamiones1.add(wrappCamion12);
        //Camion0103
        ADR_Terminal.wrapperCamion wrappCamion13 = new ADR_Terminal.wrapperCamion();

        wrappCamion13.Nombre='El colorido';
        wrappCamion13.Tipo='Normal';
        wrappCamion13.Codigo=1323123;
        wrappCamion13.destino=wrappDest1;
        wrappCamion13.choferes=lstChoferCam3;
        lstCamiones1.add(wrappCamion13);
        //------------------------------//
        //Destino1
        ADR_Terminal.wrapperDestino wrappDest11 = new ADR_Terminal.wrapperDestino();
        wrappDest11.Nombre='Jalisco';
        wrappDest11.HoraLlegada='19:00';
        //Destino2
        ADR_Terminal.wrapperDestino wrappDest22 = new ADR_Terminal.wrapperDestino();
        wrappDest2.Nombre='Yucatan';
        wrappDest2.HoraLlegada='14:22';
        //------------------------------//
        //
        //
        List<ADR_Terminal.wrapperChofer> lstChoferCam12 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstChoferCam22 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstChoferCam32 = new List<ADR_Terminal.wrapperChofer>();
        //Choferes///
        ////camion 1 choferes
        ADR_Terminal.wrapperChofer wrappChofer112 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante7 = new ADR_Terminal.wrapperAyudante();
        wrappChofer112.Nombre='Cas';
        wrappChofer112.Curp='ASDD123412ADS';
        wrappChofer112.Codigo=1323123;
        wrappChofer112.Turno='Vespertino';
       	ayudante7.Nombre='ayudante101';
        ayudante7.Codigo=3123123;
        wrappChofer112.ayudante=ayudante7;
        lstChoferCam12.add(wrappChofer112);
        //Choferes2///
        ADR_Terminal.wrapperChofer wrappChofer122 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante8 = new ADR_Terminal.wrapperAyudante();
        wrappChofer122.Nombre='Johan';
        wrappChofer122.Curp='AKDASJDD123412ADS';
        wrappChofer122.Codigo=1323123;
        wrappChofer122.Turno='Matutino';
        ayudante8.Nombre='ayudante102';
        ayudante8.Codigo=3123123;
        wrappChofer122.ayudante=ayudante8;
        lstChoferCam12.add(wrappChofer122);
                ////camion 2 choferes
        ADR_Terminal.wrapperChofer wrappChofer212 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante9 = new ADR_Terminal.wrapperAyudante();
        wrappChofer212.Nombre='Rafael';
        wrappChofer212.Curp='JASDKADASQ231DAS';
        wrappChofer212.Codigo=1323123;
        wrappChofer212.Turno='Vespertino';
        ayudante9.Nombre='ayudante103';
        ayudante9.Codigo=3123123;
        wrappChofer212.ayudante=ayudante9;
        lstChoferCam22.add(wrappChofer212);
        //Choferes2///
        ADR_Terminal.wrapperChofer wrappChofer222 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante10 = new ADR_Terminal.wrapperAyudante();
        wrappChofer222.Nombre='Guillermo';
        wrappChofer222.Curp='CCNSDJA123SD';
        wrappChofer222.Codigo=1323123;
        wrappChofer222.Turno='Matutino';
        ayudante10.Nombre='ayudante104';
        ayudante10.Codigo=3123123;
        wrappChofer222.ayudante=ayudante10;
        lstChoferCam22.add(wrappChofer222);
        ////camion 3 choferes
        ADR_Terminal.wrapperChofer wrappChofer312 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante11 = new ADR_Terminal.wrapperAyudante();
        wrappChofer312.Nombre='Felipe';
        wrappChofer312.Curp='DKASIUSD123DAS';
        wrappChofer312.Codigo=1323123;
        wrappChofer312.Turno='Vespertino';
        ayudante11.Nombre='ayudante105';
        ayudante11.Codigo=3123123;
        wrappChofer312.ayudante=ayudante11;
        lstChoferCam32.add(wrappChofer312);
        //Choferes2///
        ADR_Terminal.wrapperChofer wrappChofer322 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperAyudante ayudante12 = new ADR_Terminal.wrapperAyudante();
        wrappChofer322.Nombre='Ivan';
        wrappChofer322.Curp='CCNSDJA123SD';
        wrappChofer322.Codigo=1323123;
        wrappChofer322.Turno='Matutino';
        ayudante12.Nombre='ayudante106';
        ayudante12.Codigo=3123123;
        wrappChofer322.ayudante=ayudante12;
        lstChoferCam32.add(wrappChofer322);
        
        
        ////Camion0201
        ADR_Terminal.wrapperCamion wrappCamion21 = new ADR_Terminal.wrapperCamion();
        wrappCamion21.Nombre='El rapidin';
        wrappCamion21.Tipo='Normal';
        wrappCamion21.Codigo=1323123;
        wrappCamion21.destino=wrappDest11;
        wrappCamion21.choferes=lstChoferCam12;
        lstCamiones2.add(wrappCamion21);
        //Camion0202
        ADR_Terminal.wrapperCamion wrappCamion22 = new ADR_Terminal.wrapperCamion();
        wrappCamion22.Nombre='El bonito';
        wrappCamion22.Tipo='Premium';
        wrappCamion22.Codigo=1323123;
        wrappCamion22.destino=wrappDest2;
        wrappCamion22.choferes=lstChoferCam22;
        lstCamiones2.add(wrappCamion22);
        //Camion0203
        ADR_Terminal.wrapperCamion wrappCamion23 = new ADR_Terminal.wrapperCamion();
        wrappCamion23.Nombre='El tonto';
        wrappCamion23.Tipo='Premium';
        wrappCamion23.Codigo=1323123;
        wrappCamion23.destino=wrappDest2;
        wrappCamion23.choferes=lstChoferCam32;
        lstCamiones2.add(wrappCamion23);

        //Llenado de Ruta//
        ADR_Terminal.wrapperRuta wrappRuta= new ADR_Terminal.wrapperRuta();
        wrappRuta.Nombre='La chida';
        wrappRuta.Destino='Guadalajara';
        wrappRuta.Codigo=123123;
        wrappRuta.camiones=lstCamiones1;
        lstRutas.add(wrappRuta);
        //Llenado de Ruta//
        ADR_Terminal.wrapperRuta wrappRuta2= new ADR_Terminal.wrapperRuta();
        wrappRuta2.Nombre='La fea';
        wrappRuta2.Destino='Baja california';
        wrappRuta2.Codigo=123123;
        wrappRuta2.camiones=lstCamiones2;
        lstRutas.add(wrappRuta2);
		wrappTerminal.rutas=lstRutas;
        return wrappTerminal;
    }
}
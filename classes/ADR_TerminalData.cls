/*************************************************************************************** 
* Name: ADR_SucursalesData
* Test: ADR_SucursalesData_Test
* Author: Valentín López Morales 
* Description: Required information to fill out Terminal
**************************************************************************************** 
LastModifiedBy | LastModifiedDate | Modification Id | Change Description  
---------------------------------------------------------------------------------------- 
Valentín López | 09-07-22 		  | v0.1 			| Connection with Wrapper Terminal
*/
public class ADR_TerminalData {
    
   /*
    * Method Name: getData
    * Description: Terminal filling
    * Return Type: ADR_Terminal.wrapperTerminal
    * Parameters: 
    */
    public static ADR_Terminal.wrapperTerminal getData(){
        List<ADR_Terminal.wrapperRuta> lstRutas = new List<ADR_Terminal.wrapperRuta>();
        ADR_Terminal.wrapperTerminal  wrappTerminal = new ADR_Terminal.wrapperTerminal();
        wrappTerminal.Nombre='Oaxaca';
        wrappTerminal.Ubicacion='Centro';
        wrappTerminal.Codigo=0001;
		
        wrappTerminal.Rutas=lstRutas;
        
        //Llenado de Rutas//
        
        List<ADR_Terminal.wrapperCamion> lstCamion1 = new List<ADR_Terminal.wrapperCamion>();
        List<ADR_Terminal.wrapperCamion> lstCamion2 = new List<ADR_Terminal.wrapperCamion>();
        
        //Ruta 1
        ADR_Terminal.wrapperRuta wrappRuta= new ADR_Terminal.wrapperRuta();
        wrappRuta.Nombre='Ruta 20';
        wrappRuta.Codigo=5678;
        wrappRuta.Destino='Mexico';
        wrappRuta.Camiones=lstCamion1;
        lstRutas.add(wrappRuta);
        
        //Ruta 2
        wrappRuta= new ADR_Terminal.wrapperRuta();
        wrappRuta.Nombre='Ruta 18';
        wrappRuta.Codigo=5679;
        wrappRuta.Destino='Monterrey';
        wrappRuta.Camiones=lstcamion2;
        lstRutas.add(wrappRuta);
        
        //----------------------------------//
        // Llenado de  Destiono
        
        //Destino 1
        ADR_Terminal.wrapperDestino wrappDestino1 = new ADR_Terminal.wrapperDestino();
        wrappDestino1.Nombre='México';
        wrappDestino1.HoraLlegada='13:00 PM';
        //Destino 2
        ADR_Terminal.wrapperDestino wrappDestino2 = new ADR_Terminal.wrapperDestino();
        wrappDestino2.Nombre='Monterrey';
        wrappDestino2.HoraLlegada='00:00 AM';
        //Destino 3
        ADR_Terminal.wrapperDestino wrappDestino3 = new ADR_Terminal.wrapperDestino();
        wrappDestino3.Nombre='Guadalajara';
        wrappDestino3.HoraLlegada='15:00 PM';
        //Destino 4
        ADR_Terminal.wrapperDestino wrappDestino4 = new ADR_Terminal.wrapperDestino();
        wrappDestino4.Nombre='Queretaro';
        wrappDestino4.HoraLlegada='10:00 AM';
		//Destino 5
        ADR_Terminal.wrapperDestino wrappDestino5 = new ADR_Terminal.wrapperDestino();
        wrappDestino5.Nombre='Sonora';
        wrappDestino5.HoraLlegada='23:00 PM';
        //Destino 6
        ADR_Terminal.wrapperDestino wrappDestino6 = new ADR_Terminal.wrapperDestino();
        wrappDestino6.Nombre='Veracruz';
        wrappDestino6.HoraLlegada='18:00 PM';
        //------------------------------//
        
        //Llenado de Camiones//
        List<ADR_Terminal.wrapperChofer> lstChofer1 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstChofer2 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstChofer3 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstChofer4 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstChofer5 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstChofer6 = new List<ADR_Terminal.wrapperChofer>();
        //Camion 1 Ruta 1
        ADR_Terminal.wrapperCamion wrappCamion  = new  ADR_Terminal.wrapperCamion();
        wrappCamion.Tipo='Normal';
        wrappCamion.Nombre='ORO';
        wrappCamion.Codigo=345671;
        wrappCamion.Destino=wrappDestino1;
        wrappCamion.choferes=lstChofer1;
        lstcamion1.add(wrappCamion);
        
        wrappCamion  = new  ADR_Terminal.wrapperCamion();
        wrappCamion.Tipo='Premium';
        wrappCamion.Nombre='Turbo';
        wrappCamion.Codigo=3456;
        wrappCamion.Destino=wrappDestino2;
        wrappCamion.choferes=lstChofer2;
        lstcamion1.add(wrappCamion);
        
        wrappCamion  = new  ADR_Terminal.wrapperCamion();
        wrappCamion.Tipo='Premium';
        wrappCamion.Nombre='Goma';
        wrappCamion.Codigo=345685;
        wrappCamion.Destino=wrappDestino3;
        wrappCamion.choferes=lstChofer3;
        lstcamion1.add(wrappCamion);
        
        //Camion 2 Ruta 2
        ADR_Terminal.wrapperCamion wrappCamion2  = new  ADR_Terminal.wrapperCamion();
        wrappCamion2.Tipo='Normal';
        wrappCamion2.Nombre='ASTA';
        wrappCamion2.Codigo=345671;
        wrappCamion2.Destino=wrappDestino4;
        wrappCamion2.choferes=lstChofer4;
        lstcamion2.add(wrappCamion);
        
        wrappCamion  = new  ADR_Terminal.wrapperCamion();
        wrappCamion.Tipo='Premium';
        wrappCamion.Nombre='BUSOAX';
        wrappCamion.Codigo=3456;
        wrappCamion.Destino=wrappDestino5;
        wrappCamion.choferes=lstChofer5;
        lstcamion2.add(wrappCamion);
        
        wrappCamion  = new  ADR_Terminal.wrapperCamion();
        wrappCamion.Tipo='Premium';
        wrappCamion.Nombre='PLATA';
        wrappCamion.Codigo=345685;
        wrappCamion.Destino=wrappDestino6;
        wrappCamion.choferes=lstChofer6;
        lstcamion2.add(wrappCamion);
        
        //Llenado de Ayudantes
        ADR_Terminal.wrapperAyudante wrappAyudante1= new ADR_Terminal.wrapperAyudante();
        wrappAyudante1.Nombre='Diana';
        wrappAyudante1.Codigo=2456;
        ADR_Terminal.wrapperAyudante wrappAyudante2= new ADR_Terminal.wrapperAyudante();
        wrappAyudante2.Nombre='Paola';
        wrappAyudante2.Codigo=2964;
        ADR_Terminal.wrapperAyudante wrappAyudante3= new ADR_Terminal.wrapperAyudante();
        wrappAyudante3.Nombre='Dennis';
        wrappAyudante3.Codigo=2452;
        ADR_Terminal.wrapperAyudante wrappAyudante4= new ADR_Terminal.wrapperAyudante();
        wrappAyudante4.Nombre='Esteban';
        wrappAyudante4.Codigo=2214;
        ADR_Terminal.wrapperAyudante wrappAyudante5= new ADR_Terminal.wrapperAyudante();
        wrappAyudante5.Nombre='Nanci';
        wrappAyudante5.Codigo=26987;
        ADR_Terminal.wrapperAyudante wrappAyudante6= new ADR_Terminal.wrapperAyudante();
        wrappAyudante6.Nombre='Mayra';
        wrappAyudante6.Codigo=2978;
        ADR_Terminal.WrapperAyudante wrappAyudante7= new ADR_Terminal.wrapperAyudante();
        wrappAyudante7.Nombre='Dalia';
        wrappAyudante7.Codigo=24852;
        ADR_Terminal.wrapperAyudante wrappAyudante8= new ADR_Terminal.wrapperAyudante();
        wrappAyudante8.Nombre='Rosa';
        wrappAyudante8.Codigo=0354;
        ADR_Terminal.wrapperAyudante wrappAyudante9= new ADR_Terminal.wrapperAyudante();
        wrappAyudante9.Nombre='Jenny';
        wrappAyudante9.Codigo=2934;
        ADR_Terminal.wrapperAyudante wrappAyudante10= new ADR_Terminal.wrapperAyudante();
        wrappAyudante10.Nombre='Alondra';
        wrappAyudante10.Codigo=29752;
        ADR_Terminal.wrapperAyudante wrappAyudante11= new ADR_Terminal.wrapperAyudante();
        wrappAyudante11.Nombre='Dulce';
        wrappAyudante11.Codigo=2366;
        ADR_Terminal.wrapperAyudante wrappAyudante12= new ADR_Terminal.wrapperAyudante();
        wrappAyudante12.Nombre='Estela';
        wrappAyudante12.Codigo=2658;
        
        //Llenado de Choferes
        
        ADR_Terminal.wrapperChofer wrappChofer1 = new ADR_Terminal.wrapperChofer();
        wrappChofer1.Nombre='Jesus';
        wrappChofer1.CURP='JJSWBSWYEHBDF';
        wrappChofer1.Codigo=2345;
        wrappChofer1.Turno='Matunito';
        wrappChofer1.Ayudante=wrappAyudante1;
        lstChofer1.add(wrappChofer1);
        
        ADR_Terminal.wrapperChofer wrappChofer2 = new ADR_Terminal.wrapperChofer();
        wrappChofer2.Nombre='Pablo';
        wrappChofer2.CURP='PASWBSWYEHBDF';
        wrappChofer2.Codigo=2345;
        wrappChofer2.Turno='Despertino';
        wrappChofer2.Ayudante=wrappAyudante2;
        lstChofer1.add(wrappChofer2);
        
        ADR_Terminal.wrapperChofer wrappChofer3 = new ADR_Terminal.wrapperChofer();
        wrappChofer3.Nombre='Chopper';
        wrappChofer3.CURP='CHSWBSWYEHBDF';
        wrappChofer3.Codigo=2398;
        wrappChofer3.Turno='Matunito';
        wrappChofer3.Ayudante=wrappAyudante3;
        lstChofer2.add(wrappChofer3);
        
        ADR_Terminal.wrapperChofer wrappChofer4 = new ADR_Terminal.wrapperChofer();
        wrappChofer4.Nombre='Kiko';
        wrappChofer4.CURP='KITWBSWYEHBDF';
        wrappChofer4.Codigo=2656;
        wrappChofer4.Turno='Despertino';
        wrappChofer4.Ayudante=wrappAyudante4;
        lstChofer2.add(wrappChofer4);
        
        ADR_Terminal.wrapperChofer wrappChofer5 = new ADR_Terminal.wrapperChofer();
        wrappChofer5.Nombre='Raul';
        wrappChofer5.CURP='RAPWBSWYEHBDF';
        wrappChofer5.Codigo=2786;
        wrappChofer5.Turno='Matunito';
        wrappChofer5.Ayudante=wrappAyudante5;
        lstChofer3.add(wrappChofer5);
        
        ADR_Terminal.wrapperChofer wrappChofer6 = new ADR_Terminal.wrapperChofer();
        wrappChofer6.Nombre='Pancho';
        wrappChofer6.CURP='PANWBSWYEHBDF';
        wrappChofer6.Codigo=2396;
        wrappChofer6.Turno='Despertino';
        wrappChofer6.Ayudante=wrappAyudante6;
        lstChofer3.add(wrappChofer6);
        
        ADR_Terminal.wrapperChofer wrappChofer7 = new ADR_Terminal.wrapperChofer();
        wrappChofer7.Nombre='Sergio';
        wrappChofer7.CURP='SESWBSWYEHBDF';
        wrappChofer7.Codigo=6812;
        wrappChofer7.Turno='Matunito';
        wrappChofer7.Ayudante=wrappAyudante7;
        lstChofer4.add(wrappChofer7);
        
        ADR_Terminal.wrapperChofer wrappChofer8 = new ADR_Terminal.wrapperChofer();
        wrappChofer8.Nombre='Paco';
        wrappChofer8.CURP='PACWBSWYEHBDF';
        wrappChofer8.Codigo=1335;
        wrappChofer8.Turno='Despertino';
        wrappChofer8.Ayudante=wrappAyudante8;
        lstChofer4.add(wrappChofer8);
        
        ADR_Terminal.wrapperChofer wrappChofer9 = new ADR_Terminal.wrapperChofer();
        wrappChofer9.Nombre='Lucas';
        wrappChofer9.CURP='LLSWBSWYEHBDF';
        wrappChofer9.Codigo=6822;
        wrappChofer9.Turno='Matunito';
        wrappChofer9.Ayudante=wrappAyudante9;
        lstChofer5.add(wrappChofer9);
        
        ADR_Terminal.wrapperChofer wrappChofer10 = new ADR_Terminal.wrapperChofer();
        wrappChofer10.Nombre='Jorge';
        wrappChofer10.CURP='JGSWBSWYEHBDF';
        wrappChofer10.Codigo=2671;
        wrappChofer10.Turno='Despertino';
        wrappChofer10.Ayudante=wrappAyudante10;
        lstChofer5.add(wrappChofer10);
        
        ADR_Terminal.wrapperChofer wrappChofer11 = new ADR_Terminal.wrapperChofer();
        wrappChofer11.Nombre='Ruben';
        wrappChofer11.CURP='RBSWBSWYEHBDF';
        wrappChofer11.Codigo=3656;
        wrappChofer11.Turno='Matunito';
        wrappChofer11.Ayudante=wrappAyudante11;
        lstChofer6.add(wrappChofer11);
        
        ADR_Terminal.wrapperChofer wrappChofer12 = new ADR_Terminal.wrapperChofer();
        wrappChofer12.Nombre='Edwin';
        wrappChofer12.CURP='EDNWBSWYEHBDF';
        wrappChofer12.Codigo=0457;
        wrappChofer12.Turno='Despertino';
        wrappChofer12.Ayudante=wrappAyudante12;
        lstChofer6.add(wrappChofer12);
        
        return wrappTerminal;
    }
}
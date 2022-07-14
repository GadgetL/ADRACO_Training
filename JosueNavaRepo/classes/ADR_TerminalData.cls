public class ADR_TerminalData {
    public static ADR_Terminal.wrapperTerminal getData(){
        List<ADR_Terminal.wrapperRutas> lstRutas = new List<ADR_Terminal.wrapperRutas>();
        ADR_Terminal.wrapperTerminal wrappTerminal= new ADR_Terminal.wrapperTerminal();
        wrappTerminal.Nombre ='Costa Line';
        wrappTerminal.Ubicacion ='CDMX';
        wrappTerminal.Codigo ='CMX-8564';
        wrappTerminal.rutas = lstRutas;
        
       	List<ADR_Terminal.wrapperCamiones> lstCamionesR1 = new List<ADR_Terminal.wrapperCamiones>();
        List<ADR_Terminal.wrapperCamiones> lstCamionesR2 = new List<ADR_Terminal.wrapperCamiones>();
        
        //llenado de rutas
        
        //ruta uno
        ADR_Terminal.wrapperRutas wrappRutaUno = new ADR_Terminal.wrapperRutas();
        wrappRutaUno.Nombre='Mexico-Queretaro';
        wrappRutaUno.Codigo='MQ-5625';
        wrappRutaUno.Destino='Queretaro';
        wrappRutaUno.camiones = lstCamionesR1;
        lstRutas.add(wrappRutaUno);
        
        //ruta Dos
        ADR_Terminal.wrapperRutas wrappRutaDos = new ADR_Terminal.wrapperRutas();
        wrappRutaDos.Nombre='Mexico-Cuernavaca';
        wrappRutaDos.Codigo='MCA-36521';
        wrappRutaDos.Destino='Cuernavaca';
        wrappRutaDos.camiones=lstCamionesR2;
        lstRutas.add(wrappRutaDos);
        
        //destino
        ADR_Terminal.wrapperDestino wrappDestino = new ADR_Terminal.wrapperDestino();
        wrappDestino.Nombre = 'Queretaro';
        wrappDestino.HoraLlegada = Time.newInstance(13, 12, 20, 0000);
        
         //ayudantes
        ADR_Terminal.wrapperAyudantes ay1 = new ADR_Terminal.wrapperAyudantes();
        ay1.Nombre = 'Jorge';
        ay1.Codigo = 'AY-01';
        ADR_Terminal.wrapperAyudantes ay2 = new ADR_Terminal.wrapperAyudantes();
        ay2.Nombre = 'Jorge';
        ay2.Codigo = 'AY-01';
        ADR_Terminal.wrapperAyudantes ay3 = new ADR_Terminal.wrapperAyudantes();
        ay3.Nombre = 'Jorge';
        ay3.Codigo = 'AY-01';
        ADR_Terminal.wrapperAyudantes ay4 = new ADR_Terminal.wrapperAyudantes();
        ay4.Nombre = 'Jorge';
        ay4.Codigo = 'AY-01';
        ADR_Terminal.wrapperAyudantes ay5 = new ADR_Terminal.wrapperAyudantes();
        ay5.Nombre = 'Jorge';
        ay5.Codigo = 'AY-01';
        ADR_Terminal.wrapperAyudantes ay6 = new ADR_Terminal.wrapperAyudantes();
        ay6.Nombre = 'Jorge';
        ay6.Codigo = 'AY-01';
        
        
        //Llenado de choferes
        List<ADR_Terminal.wrapperChoferes> lstChoferesC1R1 = new List<ADR_Terminal.wrapperChoferes>();
        List<ADR_Terminal.wrapperChoferes> lstChoferesC2R1 = new List<ADR_Terminal.wrapperChoferes>();
        List<ADR_Terminal.wrapperChoferes> lstChoferesC3R1 = new List<ADR_Terminal.wrapperChoferes>();
        List<ADR_Terminal.wrapperChoferes> lstChoferesC1R2 = new List<ADR_Terminal.wrapperChoferes>();
        List<ADR_Terminal.wrapperChoferes> lstChoferesC2R2 = new List<ADR_Terminal.wrapperChoferes>();
        List<ADR_Terminal.wrapperChoferes> lstChoferesC3R2 = new List<ADR_Terminal.wrapperChoferes>();
        
        
        
        ADR_Terminal.wrapperChoferes chofer1 = new  ADR_Terminal.wrapperChoferes();
        chofer1.Nombre = 'Juan';
        chofer1.Codigo ='23';
        chofer1.CURP ='JNHHBG25213';
        chofer1.Turno ='Matutino';
        chofer1.ayudante = ay1;
        lstChoferesC1R1.add(chofer1);
        
        ADR_Terminal.wrapperChoferes chofer2 = new  ADR_Terminal.wrapperChoferes();
        chofer2.Nombre = 'Pedro';
        chofer2.Codigo ='23';
        chofer2.CURP ='GKVTYTVY546531';
        chofer2.Turno ='Vespertino';
        chofer2.ayudante = ay2;
        lstChoferesC2R1.add(chofer2);
        
        ADR_Terminal.wrapperChoferes chofer3 = new  ADR_Terminal.wrapperChoferes();
        chofer3.Nombre = 'Ruben';
        chofer3.Codigo ='48';
        chofer3.CURP ='RGBVGHJ54654';
        chofer3.Turno ='Vespertino';
        chofer3.ayudante = ay3;
        lstChoferesC3R1.add(chofer3);
        
        ADR_Terminal.wrapperChoferes chofer4 = new  ADR_Terminal.wrapperChoferes();
        chofer4.Nombre = 'Esteban';
        chofer4.Codigo ='23';
        chofer4.CURP ='JNHHBG25213';
        chofer4.Turno ='Matutino';
        chofer4.ayudante = ay4;
        lstChoferesC1R2.add(chofer4);
        
        ADR_Terminal.wrapperChoferes chofer5 = new  ADR_Terminal.wrapperChoferes();
        chofer5.Nombre = 'Raul';
        chofer5.Codigo ='502';
        chofer5.CURP ='APIOMWI2365';
        chofer5.Turno ='Matutino';
        chofer5.ayudante = ay5;
        lstChoferesC2R2.add(chofer5);
        
        ADR_Terminal.wrapperChoferes chofer6 = new  ADR_Terminal.wrapperChoferes();
        chofer6.Nombre = 'Lorenzo';
        chofer6.Codigo ='108';
        chofer6.CURP ='GKBVBGB64854';
        chofer6.Turno ='Vespertino';
        chofer6.ayudante = ay6;
        lstChoferesC3R2.add(chofer6);
       
        //lista de camiones
        
        ADR_Terminal.wrapperCamiones wrappCamion1Ruta1 = new ADR_Terminal.wrapperCamiones();
        wrappCamion1Ruta1.Tipo = 'Premium';
        wrappCamion1Ruta1.Nombre ='ETN Turistar Lujo';
        wrappCamion1Ruta1.Codigo ='2548';
        wrappCamion1Ruta1.choferes = lstChoferesC1R1;
        wrappCamion1Ruta1.destino = wrappDestino;
        lstCamionesR1.add(wrappCamion1Ruta1);
        
        ADR_Terminal.wrapperCamiones wrappCamion2Ruta1 = new ADR_Terminal.wrapperCamiones();
        wrappCamion2Ruta1.Tipo = 'Normal';
        wrappCamion2Ruta1.Nombre ='Turistar';
        wrappCamion2Ruta1.Codigo ='7725';
        wrappCamion2Ruta1.choferes = lstChoferesC2R1;
        wrappCamion2Ruta1.destino = wrappDestino;
        lstCamionesR1.add(wrappCamion2Ruta1);
        
        ADR_Terminal.wrapperCamiones wrappCamion3Ruta1 = new ADR_Terminal.wrapperCamiones();
        wrappCamion3Ruta1.Tipo = 'Premium';
        wrappCamion3Ruta1.Nombre ='ETN Turistar Lujo';
        wrappCamion3Ruta1.Codigo ='6897';
        wrappCamion3Ruta1.choferes = lstChoferesC3R1;
        wrappCamion3Ruta1.destino = wrappDestino;
        lstCamionesR1.add(wrappCamion3Ruta1);
        
        ADR_Terminal.wrapperCamiones wrappCamion1Ruta2 = new ADR_Terminal.wrapperCamiones();
        wrappCamion1Ruta2.Tipo = 'Normal';
        wrappCamion1Ruta2.Nombre ='ETN Turistar Lujo';
        wrappCamion1Ruta2.Codigo ='2548';
        wrappCamion1Ruta2.choferes = lstChoferesC1R2;
        wrappCamion1Ruta2.destino = wrappDestino;
        lstCamionesR2.add(wrappCamion1Ruta2);
        
        ADR_Terminal.wrapperCamiones wrappCamion2Ruta2 = new ADR_Terminal.wrapperCamiones();
        wrappCamion2Ruta2.Tipo = 'Normal';
        wrappCamion2Ruta2.Nombre ='Turistar';
        wrappCamion2Ruta2.Codigo ='7725';
        wrappCamion2Ruta2.choferes = lstChoferesC2R2;
        wrappCamion2Ruta2.destino = wrappDestino;
        lstCamionesR2.add(wrappCamion2Ruta2);
        
        ADR_Terminal.wrapperCamiones wrappCamion3Ruta2 = new ADR_Terminal.wrapperCamiones();
        wrappCamion3Ruta2.Tipo = 'Premium';
        wrappCamion3Ruta2.Nombre ='ETN Turistar Lujo';
        wrappCamion3Ruta2.Codigo ='6897';
        wrappCamion3Ruta2.choferes = lstChoferesC3R2;
        wrappCamion3Ruta2.destino = wrappDestino;
        lstCamionesR2.add(wrappCamion3Ruta2);
        
       
        
        return wrappTerminal;
    }
}
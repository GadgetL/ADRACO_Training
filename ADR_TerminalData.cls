/************************************************************************************************************
 * Name: ADR_TerminalData
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Insert of data for wrapper object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| Insert the data
*/
public class ADR_TerminalData {
  public static ADR_Terminal.wrapperTerminal getData() {
    ADR_Terminal.wrapperTerminal wrappterminal = new ADR_Terminal.wrapperTerminal();
    List<ADR_Terminal.wrapperRutas> lstrutas = new List<ADR_Terminal.wrapperRutas>();
     wrappterminal.Nombre = 'Central'; wrappterminal.Ubicacion = 'Merida'; wrappterminal.Codigo = 'TM01'; wrappterminal.rutas = lstrutas;
    //Rutas 
    
    List<ADR_Terminal.wrapperCamiones> lstCamionesRu1 = new List<ADR_Terminal.wrapperCamiones>();
    List<ADR_Terminal.wrapperCamiones> lstCamionesRu2 = new List<ADR_Terminal.wrapperCamiones>();
    ADR_Terminal.wrapperRutas wrappRuta1 = new ADR_Terminal.wrapperRutas();
      wrappRuta1.Nombre = 'Ruta 1'; wrappRuta1.Codigo = 'RM01'; wrappRuta1.Destino = 'Veracruz'; wrappRuta1.camiones = lstCamionesRu1;
    ADR_Terminal.wrapperRutas wrappRuta2 = new ADR_Terminal.wrapperRutas();
      wrappRuta2.Nombre = 'Ruta 2'; wrappRuta2.Codigo = 'RM02'; wrappRuta2.Destino = 'Yucatan'; wrappRuta2.camiones = lstCamionesRu2;
    lstrutas.add(wrappRuta1); lstrutas.add(wrappRuta2);

    //Destino
    ADR_Terminal.wrapperDestino wrappDestino1 = new ADR_Terminal.wrapperDestino();
    wrappDestino1.Nombre = 'Veracruz'; wrappDestino1.HoraLlegada = '12:00';
    ADR_Terminal.wrapperDestino wrappDestino2 = new ADR_Terminal.wrapperDestino();
    wrappDestino2.Nombre = 'Puerto'; wrappDestino2.HoraLlegada = '12:00';
      //Lista de Choferes
    List<ADR_Terminal.wrapperChoferes> lstChoferesCam1 = new List<ADR_Terminal.wrapperChoferes>();
    List<ADR_Terminal.wrapperChoferes> lstChoferesCam2 = new List<ADR_Terminal.wrapperChoferes>();
    List<ADR_Terminal.wrapperChoferes> lstChoferesCam3 = new List<ADR_Terminal.wrapperChoferes>();
    List<ADR_Terminal.wrapperChoferes> lstChoferesCam4 = new List<ADR_Terminal.wrapperChoferes>();
       //Camiones de la ruta 1
    ADR_Terminal.wrapperCamiones wrappCamion1Ru1 = new ADR_Terminal.wrapperCamiones();
      wrappCamion1Ru1.Tipo = 'Normal'; wrappCamion1Ru1.Nombre = 'Bus1'; wrappCamion1Ru1.Codigo = 'BN01R1'; 
      wrappCamion1Ru1.destino = wrappDestino1; wrappCamion1Ru1.choferes = lstChoferesCam1;
    ADR_Terminal.wrapperCamiones wrappCamion2Ru1 = new ADR_Terminal.wrapperCamiones();
      wrappCamion2Ru1.Tipo = 'Premium'; wrappCamion2Ru1.Nombre = 'Bus2'; wrappCamion2Ru1.Codigo = 'BP02R1';
      wrappCamion2Ru1.destino = wrappDestino2; wrappCamion2Ru1.choferes = lstChoferesCam3;
    ADR_Terminal.wrapperCamiones wrappCamion3Ru1 = new ADR_Terminal.wrapperCamiones();
      wrappCamion3Ru1.Tipo = 'Normal'; wrappCamion3Ru1.Nombre = 'Bus3'; wrappCamion3Ru1.Codigo = 'BN03R1';
      wrappCamion3Ru1.destino = wrappDestino1; wrappCamion3Ru1.choferes = lstChoferesCam2;
    lstCamionesRu1.add(wrappCamion1Ru1);   lstCamionesRu1.add(wrappCamion2Ru1);   lstCamionesRu1.add(wrappCamion3Ru1);
    //Camiones de la ruta 2
    ADR_Terminal.wrapperCamiones wrappCamion1Ru2 = new ADR_Terminal.wrapperCamiones();
      wrappCamion1Ru2.Tipo = 'Premium'; wrappCamion1Ru2.Nombre = 'Bus4'; wrappCamion1Ru2.Codigo = 'BN04R2';
      wrappCamion1Ru2.destino = wrappDestino2; wrappCamion1Ru2.choferes = lstChoferesCam2;
    ADR_Terminal.wrapperCamiones wrappCamion2Ru2 = new ADR_Terminal.wrapperCamiones();
     wrappCamion2Ru2.Tipo = 'Normal'; wrappCamion2Ru2.Nombre = 'Bus5'; wrappCamion2Ru2.Codigo = 'BP05R2';
     wrappCamion2Ru2.destino = wrappDestino1; wrappCamion2Ru2.choferes = lstChoferesCam4;
    ADR_Terminal.wrapperCamiones wrappCamion3Ru2 = new ADR_Terminal.wrapperCamiones();
    wrappCamion3Ru2.Tipo = 'Premium'; wrappCamion3Ru2.Nombre = 'Bus6'; wrappCamion3Ru2.Codigo = 'BN06R2'; 
    wrappCamion3Ru2.destino = wrappDestino2; wrappCamion3Ru2.choferes = lstChoferesCam3;
    lstCamionesRu2.add(wrappCamion1Ru2);   lstCamionesRu2.add(wrappCamion2Ru2);   lstCamionesRu2.add(wrappCamion3Ru2);

    //Ayudantes
    ADR_Terminal.wrapperAyudante wrappAyudante1 = new ADR_Terminal.wrapperAyudante();
    wrappAyudante1.Nombre = 'Ayudante 1'; wrappAyudante1.Codigo = 'AC1';
    ADR_Terminal.wrapperAyudante wrappAyudante2 = new ADR_Terminal.wrapperAyudante();
    wrappAyudante2.Nombre = 'Ayudante 2'; wrappAyudante2.Codigo = 'AC2';
    ADR_Terminal.wrapperAyudante wrappAyudante3 = new ADR_Terminal.wrapperAyudante();
    wrappAyudante3.Nombre = 'Ayudante 3'; wrappAyudante3.Codigo = 'AC3';
    ADR_Terminal.wrapperAyudante wrappAyudante4 = new ADR_Terminal.wrapperAyudante();
    wrappAyudante4.Nombre = 'Ayudante 4'; wrappAyudante4.Codigo = 'AC4';
    ADR_Terminal.wrapperAyudante wrappAyudante5 = new ADR_Terminal.wrapperAyudante();
    wrappAyudante5.Nombre = 'Ayudante 5'; wrappAyudante5.Codigo = 'AC5';
    ADR_Terminal.wrapperAyudante wrappAyudante6 = new ADR_Terminal.wrapperAyudante();
    wrappAyudante6.Nombre = 'Ayudante 6'; wrappAyudante6.Codigo = 'AC6';
    //Lista de Choferes
    ADR_Terminal.wrapperChoferes wrappChofer1 = new ADR_Terminal.wrapperChoferes();
      wrappChofer1.Nombre = 'Jose Ramirez'; wrappChofer1.CURP = 'RAMJ918276HOEMJ0'; wrappChofer1.Codigo = 'JRMA';
      wrappChofer1.Turno='Vespertino'; wrappChofer1.ayudante = wrappAyudante1;
    ADR_Terminal.wrapperChoferes wrappChofer2 = new ADR_Terminal.wrapperChoferes();
    wrappChofer2.Nombre = 'Maria Santiago'; wrappChofer2.CURP = 'SANM292384HOGMJ0'; wrappChofer2.Codigo = 'MSMA';
    wrappChofer2.Turno='Nocturno'; wrappChofer2.ayudante = wrappAyudante2;
    ADR_Terminal.wrapperChoferes wrappChofer3 = new ADR_Terminal.wrapperChoferes();
    wrappChofer3.Nombre = 'Fabian Reyes'; wrappChofer3.CURP = 'REYF927384ADFMJ0'; wrappChofer3.Codigo = 'RFMA';
    wrappChofer3.Turno='Vespertino'; wrappChofer3.ayudante = wrappAyudante3;
    ADR_Terminal.wrapperChoferes wrappChofer4 = new ADR_Terminal.wrapperChoferes();
    wrappChofer4.Nombre = 'Alfonso Santos'; wrappChofer4.CURP = 'SANA847382JKERMJ0'; wrappChofer4.Codigo = 'ASMA';
    wrappChofer4.Turno='Nocturno'; wrappChofer4.ayudante = wrappAyudante4;
    ADR_Terminal.wrapperChoferes wrappChofer5 = new ADR_Terminal.wrapperChoferes();
    wrappChofer5.Nombre = 'Jorge Mendez'; wrappChofer5.CURP = 'MENJ2031238MSDJFJ0'; wrappChofer5.Codigo = 'JMMA';
    wrappChofer5.Turno='Vespertino'; wrappChofer5.ayudante = wrappAyudante5;
    ADR_Terminal.wrapperChoferes wrappChofer6 = new ADR_Terminal.wrapperChoferes();
    wrappChofer6.Nombre = 'Myriam Hernandez'; wrappChofer6.CURP = 'HERM201298SFGSSJ0'; wrappChofer6.Codigo = 'MHMA';
    wrappChofer6.Turno='Matutino'; wrappChofer6.ayudante =wrappAyudante6;
    ADR_Terminal.wrapperChoferes wrappChofer7 = new ADR_Terminal.wrapperChoferes();
    wrappChofer7.Nombre = 'Jose Maria'; wrappChofer7.CURP = 'MARJ220909JASLKJ0'; wrappChofer7.Codigo = 'MJMA';
    wrappChofer7.Turno='Matunino'; wrappChofer7.ayudante = wrappAyudante1;
    lstChoferesCam1.add(wrappChofer1); lstChoferesCam1.add(wrappChofer2);
    lstChoferesCam2.add(wrappChofer3); lstChoferesCam2.add(wrappChofer4);
    lstChoferesCam3.add(wrappChofer5); lstChoferesCam3.add(wrappChofer6);
    lstChoferesCam4.add(wrappChofer7); lstChoferesCam4.add(wrappChofer4);

    return wrappterminal;
  }
}
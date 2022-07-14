public class ADR_TerminalData {
    public static ADR_Terminal.wrapperTerminal getData() {
        ADR_Terminal.wrapperTerminal wrapperTerminal = new  ADR_Terminal.wrapperTerminal();
        List<ADR_Terminal.wrapperRuta> lstruta = new List<ADR_Terminal.wrapperRuta>();


        wrapperTerminal.Nombre = 'Terminal A';
        wrapperTerminal.Ubicacion = 'Queretaro';
        wrapperTerminal.Codigo = 1234;
        wrapperTerminal.ruta = lstruta;
        //Rutas
        ADR_Terminal.wrapperRuta ruta1 = new ADR_Terminal.wrapperRuta();
        List<ADR_Terminal.wrapperCamion> lstcamion = new List<ADR_Terminal.wrapperCamion>();

        ruta1.Nombre= 'Ruta A';
        ruta1.Codigo= 0001;
        ruta1.Destino = 'Destino A';
        ruta1.camion = lstcamion;

        ADR_Terminal.wrapperRuta ruta2 = new ADR_Terminal.wrapperRuta();
        
        ruta2.Nombre = 'Ruta B';
        ruta2.Codigo = 0002;
        ruta2.Destino= 'Destino B';
        ruta2.camion = lstcamion;
        //llenado lista
        lstruta.add(ruta1);
        lstruta.add(ruta2);

        //camion

        ADR_Terminal.wrapperCamion camion1ruta1 = new ADR_Terminal.wrapperCamion();
        ADR_Terminal.wrapperCamion camion2ruta1 = new ADR_Terminal.wrapperCamion();
        ADR_Terminal.wrapperCamion camion3ruta1 = new ADR_Terminal.wrapperCamion();

        ADR_Terminal.wrapperCamion camion1ruta2 = new ADR_Terminal.wrapperCamion();
        ADR_Terminal.wrapperCamion camion2ruta2 = new ADR_Terminal.wrapperCamion();
        ADR_Terminal.wrapperCamion camion3ruta2 = new ADR_Terminal.wrapperCamion();

        List<ADR_Terminal.wrapperChofer> lstchofercamion1ruta1 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstchofercamion2ruta1 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstchofercamion3ruta1 = new List<ADR_Terminal.wrapperChofer>();

        List<ADR_Terminal.wrapperChofer> lstchofercamion1ruta2 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstchofercamion2ruta2 = new List<ADR_Terminal.wrapperChofer>();
        List<ADR_Terminal.wrapperChofer> lstchofercamion3ruta2 = new List<ADR_Terminal.wrapperChofer>();

        camion1ruta1.Tipo = 'Premium';
        camion1ruta1.Nombre = 'Camion A1';
        camion1ruta1.Codigo = 0011;
        camion1ruta1.destino = destinocamion1ruta1;
        camion1ruta1.chofer = lstchofercamion1ruta1;

        camion2ruta1.Tipo = 'Normal';
        camion2ruta1.Nombre = 'Camion A2';
        camion2ruta1.Codigo = 0012;
        camion2ruta1.destino = destinocamion2ruta1;
        camion2ruta1.chofer = lstchofercamion2ruta1;
        
        camion3ruta1.Tipo = 'Premium';
        camion3ruta1.Nombre = 'Camion A3';
        camion3ruta1.Codigo = 0013;
        camion3ruta1.destino = destinocamion3ruta1;
        camion3ruta1.chofer =lstchofercamion3ruta1;

        camion1ruta2.Tipo = 'Normal';
        camion1ruta2.Nombre = 'Camion B1';
        camion1ruta2.Codigo = 0111;
        camion1ruta2.destino = destinocamion1ruta2;
        camion1ruta2.chofer =lstchofercamion1ruta2;

        camion2ruta2.Tipo = 'Premium';
        camion2ruta2.Nombre = 'Camion B2';
        camion2ruta2.Codigo = 0112;
        camion2ruta2.destino = destinocamion2ruta2;
        camion2ruta2.chofer = lstchofercamion2ruta2;

        camion3ruta2.Tipo = 'Premium';
        camion3ruta2.Nombre = 'Camion B3';
        camion3ruta2.Codigo = 0113;
        camion3ruta2.destino = destinocamion3ruta2;
        camion3ruta2.chofer = lstchofercamion3ruta2;

        //llenado lista;
        lstcamion.add(camion1ruta1);
        lstcamion.add(camion2ruta1);
        lstcamion.add(camion3ruta1);
        lstcamion.add(camion1ruta2);
        lstcamion.add(camion2ruta2);

        //Destino
        ADR_Terminal.wrapperDestino destinocamion1ruta1 = new ADR_Terminal.wrapperDestino();
        ADR_Terminal.wrapperDestino destinocamion2ruta1 = new ADR_Terminal.wrapperDestino();
        ADR_Terminal.wrapperDestino destinocamion3ruta1 = new ADR_Terminal.wrapperDestino();

        ADR_Terminal.wrapperDestino destinocamion1ruta2 = new ADR_Terminal.wrapperDestino();
        ADR_Terminal.wrapperDestino destinocamion2ruta2 = new ADR_Terminal.wrapperDestino();
        ADR_Terminal.wrapperDestino destinocamion3ruta2 = new ADR_Terminal.wrapperDestino();

        destinocamion1ruta1.Nombre ='Orizaba';
        destinocamion1ruta1.HoraLlegada = '09:15 AM';
        
        destinocamion2ruta1.Nombre ='Puerto Vallarta';
        destinocamion2ruta1.HoraLlegada = '12:00 PM';

        destinocamion3ruta1.Nombre = 'Aguascalientes';
        destinocamion3ruta1.HoraLlegada='02:30 PM';

        destinocamion1ruta2.Nombre = 'Chetumal';
        destinocamion1ruta2.HoraLlegada = '10:00 AM';

        destinocamion2ruta2.Nombre = 'Guadalajara';
        destinocamion2ruta2.HoraLlegada = '07:00 AM';

        destinocamion3ruta2.Nombre = 'Merida';
        destinocamion3ruta2.HoraLlegada = '04:00 PM';

        //Chofer

        ADR_Terminal.wrapperChofer chofer1cam1rut1 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperChofer chofer2cam1rut1 = new ADR_Terminal.wrapperChofer();

        ADR_Terminal.wrapperChofer chofer1cam2rut1 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperChofer chofer2cam2rut1 = new ADR_Terminal.wrapperChofer();

        ADR_Terminal.wrapperChofer chofer1cam3rut1 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperChofer chofer2cam3rut1 = new ADR_Terminal.wrapperChofer();

        ADR_Terminal.wrapperChofer chofer1cam1rut2 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperChofer chofer2cam1rut2 = new ADR_Terminal.wrapperChofer();

        ADR_Terminal.wrapperChofer chofer1cam2rut2 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperChofer chofer2cam2rut2 = new ADR_Terminal.wrapperChofer();

        ADR_Terminal.wrapperChofer chofer1cam3rut2 = new ADR_Terminal.wrapperChofer();
        ADR_Terminal.wrapperChofer chofer2cam3rut2 = new ADR_Terminal.wrapperChofer();

        chofer1cam1rut1.Nombre = 'Juan';
        chofer1cam1rut1.CURP = 'Juan12345834PS2';
        chofer1cam1rut1.Codigo = 0001;
        chofer1cam1rut1.Turno = 'Matutino';
        chofer1cam1rut1.ayudante = ayudante1;

        chofer2cam1rut1.Nombre = 'Julio';
        chofer2cam1rut1.CURP = 'Julio12345834PS2';
        chofer2cam1rut1.Codigo = 0002;
        chofer2cam1rut1.Turno = 'Vespertino';
        chofer2cam1rut1.ayudante = ayudante2;

        chofer1cam2rut1.Nombre = 'Rocio';
        chofer1cam2rut1.CURP = 'Rocio12345834PS2';
        chofer1cam2rut1.Codigo = 0003;
        chofer1cam2rut1.Turno = 'Vespertino';
        chofer1cam2rut1.ayudante = ayudante3;

        chofer2cam2rut1.Nombre = 'Alexis';
        chofer2cam2rut1.CURP = 'Alexis12345834PS2';
        chofer2cam2rut1.Codigo = 0004;
        chofer2cam2rut1.Turno = 'Matutino';
        chofer2cam2rut1.ayudante = ayudante4;

        chofer1cam3rut1.Nombre = 'Carlos';
        chofer1cam3rut1.CURP = 'Carlos12345834PS2';
        chofer1cam3rut1.Codigo = 0005;
        chofer1cam3rut1.Turno = 'Matutino';
        chofer1cam3rut1.ayudante = ayudante5;

        chofer2cam3rut1.Nombre = 'Jorge';
        chofer2cam3rut1.CURP = 'Jorge12345834PS2';
        chofer2cam3rut1.Codigo = 0006;
        chofer2cam3rut1.Turno = 'Matutino';
        chofer2cam3rut1.ayudante = ayudante6;

        chofer1cam1rut2.Nombre = 'Silvia';
        chofer1cam1rut2.CURP = 'Silvia12345834PS2';
        chofer1cam1rut2.Codigo = 0007;
        chofer1cam1rut2.Turno = 'Matutino';
        chofer1cam1rut2.ayudante = ayudante7;

        chofer2cam1rut2.Nombre = 'Pedro';
        chofer2cam1rut2.CURP = 'Pedro12345834PS2';
        chofer2cam1rut2.Codigo = 0008;
        chofer2cam1rut2.Turno = 'Vespertino';
        chofer2cam1rut2.ayudante = ayudante8;

        chofer1cam2rut2.Nombre = 'John';
        chofer1cam2rut2.CURP = 'John12345834PS2';
        chofer1cam2rut2.Codigo = 0009;
        chofer1cam2rut2.Turno = 'Matutino';
        chofer1cam2rut2.ayudante = ayudante9;

        chofer2cam2rut2.Nombre = 'Joaquin';
        chofer2cam2rut2.CURP = 'Joaquin12345834PS2';
        chofer2cam2rut2.Codigo = 0010;
        chofer2cam2rut2.Turno = 'Matutino';
        chofer2cam2rut2.ayudante = ayudante10;

        chofer1cam3rut2.Nombre = 'Pamela';
        chofer1cam3rut2.CURP = 'Pamela12345834PS2';
        chofer1cam3rut2.Codigo = 0011;
        chofer1cam3rut2.Turno = 'Matutino';
        chofer1cam3rut2.ayudante = ayudante11;

        chofer2cam3rut2.Nombre = 'Jesus';
        chofer2cam3rut2.CURP = 'Jesus12345834PS2';
        chofer2cam3rut2.Codigo = 0012;
        chofer2cam3rut2.Turno = 'Vespertino';
        chofer2cam3rut2.ayudante = ayudante12;

        //llenado
        lstchofercamion1ruta1.add(chofer1cam1rut1);
        lstchofercamion1ruta1.add(chofer2cam1rut1);

        lstchofercamion2ruta1.add(chofer1cam2rut1);
        lstchofercamion2ruta1.add(chofer2cam2rut1);

        lstchofercamion3ruta1.add(chofer1cam3rut1);
        lstchofercamion3ruta1.add(chofer2cam3rut1);

        lstchofercamion1ruta2.add(chofer1cam1rut2);
        lstchofercamion1ruta2.add(chofer2cam1rut2);

        lstchofercamion2ruta2.add(chofer1cam2rut2);
        lstchofercamion1ruta2.add(chofer2cam2rut2);
        
        lstchofercamion3ruta2.add(chofer1cam3rut2);
        lstchofercamion3ruta2.add(chofer2cam3rut2);

        //Ayudantes

        ADR_Terminal.wrapperAyudante ayudante1 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante2 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante3 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante4 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante5 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante6 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante7 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante8 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante9 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante10 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante11 = new ADR_Terminal.wrapperAyudante();
        ADR_Terminal.wrapperAyudante ayudante12 = new ADR_Terminal.wrapperAyudante();

        ayudante1.Nombre ='Fernando';
        ayudante1.Codigo= 001;

        ayudante2.Nombre ='Lucia';
        ayudante2.Codigo= 002;

        ayudante3.Nombre ='Sarah';
        ayudante3.Codigo= 003;

        ayudante4.Nombre ='Kev';
        ayudante4.Codigo= 004;

        ayudante5.Nombre ='Iker';
        ayudante5.Codigo= 005;

        ayudante6.Nombre ='Karla';
        ayudante6.Codigo= 006;

        ayudante7.Nombre ='Ivan';
        ayudante7.Codigo= 007;

        ayudante8.Nombre ='Michael';
        ayudante8.Codigo= 008;

        ayudante9.Nombre ='Manuel';
        ayudante9.Codigo= 009;

        ayudante10.Nombre ='Brian';
        ayudante10.Codigo= 010;

        ayudante11.Nombre ='Mario';
        ayudante11.Codigo= 011;

        ayudante12.Nombre ='Antonio';
        ayudante12.Codigo= 012;

        
        return wrapperTerminal;
    }
}

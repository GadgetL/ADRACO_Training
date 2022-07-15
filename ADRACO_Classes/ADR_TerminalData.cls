public class ADR_TerminalData {
    public static ADR_Terminal.wrapperTerminal getData() {

        //Ayudantes (12)
        List<ADR_Terminal.wrapperAyudante> lstWrappAyudante = new List<ADR_Terminal.wrapperAyudante>();
        for(Integer i = 1; i < 13; i++){
            ADR_Terminal.wrapperAyudante wrappAyudante = new ADR_Terminal.wrapperAyudante();
            wrappAyudante.Nombre = 'Ayudante ' + String.valueOf(i);
            wrappAyudante.Codigo = i + 100;
            lstWrappAyudante.add(wrappAyudante);
        }
        
        //Choferes (12)
        List<ADR_Terminal.wrapperChofer> lstWrappChofer = new List<ADR_Terminal.wrapperChofer>();
        for(Integer i = 1; i < 13; i++){
            ADR_Terminal.wrapperChofer wrappChofer = new ADR_Terminal.wrapperChofer();
            wrappChofer.Nombre = 'Chofer ' + String.valueOf(i);
            wrappChofer.Codigo = i + 200;
            wrappChofer.CURP = 'TESLIOTY5' + String.valueOf(wrappChofer.Codigo);

            Integer intRand = Integer.valueOf(Math.random());
            if (intRand < 0.5) wrappChofer.Turno = 'Matutino';
            else wrappChofer.Turno = 'Vespertino';

            wrappChofer.Ayudante = lstWrappAyudante.get(i - 1);

            lstWrappChofer.add(wrappChofer);
        }

        //Destino (6)
        List<ADR_Terminal.wrapperDestino> lstWrappDestino = new List<ADR_Terminal.wrapperDestino>();
        for(Integer i = 1; i < 7; i++) {
            ADR_Terminal.wrapperDestino wrappDestino = new ADR_Terminal.wrapperDestino();
            wrappDestino.Nombre = 'Nombre ' + String.valueOf(i);
            wrappDestino.HoraLlegada = Date.valueOf('2001-01-01 1' + String.valueOf(i) + ':00:00');

            lstWrappDestino.add(wrappDestino);
        }

        //Camiones (6)
        List<ADR_Terminal.wrapperCamion> lstWrappCamion = new List<ADR_Terminal.wrapperCamion>();
        for(Integer i = 1; i < 7; i++) {
            ADR_Terminal.wrapperCamion wrappCamion = new ADR_Terminal.wrapperCamion();

            Integer intRand = Integer.valueOf(Math.random());
            if (intRand < 0.5) wrappCamion.Tipo = 'Premium';
            else wrappCamion.Tipo = 'Normal';

            wrappCamion.Nombre = 'Camion ' + String.valueOf(i);
            wrappCamion.Codigo = i + 300;
            wrappCamion.Destino = lstWrappDestino.get(i - 1);

            List<ADR_Terminal.wrapperChofer> lstWrappChoferCamion = new List<ADR_Terminal.wrapperChofer>();
            lstWrappChoferCamion.add(lstWrappChofer.get((i * 2) - 2));
            lstWrappChoferCamion.add(lstWrappChofer.get((i * 2) - 1));
            wrappCamion.Choferes = lstWrappChoferCamion;

            lstWrappCamion.add(wrappCamion);
        }

        //Rutas (2)
        List<ADR_Terminal.wrapperRuta> lstWrappRuta = new List<ADR_Terminal.wrapperRuta>();
        for(Integer i = 1; i < 3; i++) {
            ADR_Terminal.wrapperRuta wrappRuta = new ADR_Terminal.wrapperRuta();
            wrappRuta.Nombre = 'Ruta ' + String.valueOf(i);
            wrappRuta.Codigo = i + 400;
            
            Integer intRand = Integer.valueOf(Math.random());
            if (intRand < 0.5) wrappRuta.Destino = 'Norte';
            else wrappRuta.Destino = 'Sur';

            List<ADR_Terminal.wrapperCamion> lstWrappCamionRuta = new List<ADR_Terminal.wrapperCamion>();
            lstWrappCamionRuta.add(lstWrappCamion.get((i * 3) - 3));
            lstWrappCamionRuta.add(lstWrappCamion.get((i * 3) - 2));
            lstWrappCamionRuta.add(lstWrappCamion.get((i * 3) - 1));
            wrappRuta.Camiones = lstWrappCamionRuta;

            lstWrappRuta.add(wrappRuta);
        }

        //Terminal (1)
        ADR_Terminal.wrapperTerminal wrappTerminal = new ADR_Terminal.wrapperTerminal();
        wrappTerminal.Nombre = 'Terminal';
        wrappTerminal.Ubicacion = 'Zona Centro';
        wrappTerminal.Codigo = 500;
        wrappTerminal.Rutas = lstWrappRuta;

        return wrappTerminal;
    }
}

public  class ADR_SucursalesData {
    public static ADR_Sucursales.wrapperBodega getData(){
       
        
        List<ADR_Sucursales.wrapperSucursal> lstSucursales = new List<ADR_Sucursales.wrapperSucursal>();
        ADR_Sucursales.wrapperBodega wrapperBodega = new ADR_Sucursales.wrapperBodega();
        wrapperBodega.Nombre = 'ABC';
        wrapperBodega.Clave = 0001;
       // wrapperBodega.Direccion = 'Queretaro';
        wrapperBodega.sucursales = lstSucursales;

        //Llenado de sucursales
        //Llenado de sucursales
        List<ADR_Sucursales.wrapperDepartamento> lstDepartamentosSuc1 = new List<ADR_Sucursales.wrapperDepartamento>();
        List<ADR_Sucursales.wrapperDepartamento> lstDepartamentosSuc2 = new List<ADR_Sucursales.wrapperDepartamento>();
        
        ADR_Sucursales.wrapperSatInformation wrappSatInfoDep1 = new ADR_Sucursales.wrapperSatInformation();
        

        //Sat Info 1
        wrappSatInfoDep1.RFC ='TESLIOTY5678';
        wrappSatInfoDep1.Direccion = 'Queretaro';
        wrappSatInfoDep1.Razon ='Sucursal SA de CV';
        wrappSatInfoDep1.Clave = '1001';

        //Sat Info 2
        ADR_Sucursales.wrapperSatInformation wrappSatInfoDep2 = new ADR_Sucursales.wrapperSatInformation();
        wrappSatInfoDep2.RFC ='TESLIOTY5679';
        wrappSatInfoDep2.Direccion = 'Monterrey';
        wrappSatInfoDep2.Razon ='Sucursal 2 SA de CV';
        wrappSatInfoDep2.Clave = '1001';
        
        //Sucursal 1
        ADR_Sucursales.wrapperSucursal wrappSucursal = new ADR_Sucursales.wrapperSucursal();
        wrappSucursal.Nnombre = 'SUCA';
        wrappSucursal.Direccion = 'Guadalajara';
        wrappSucursal.IdSucursal='5678';
        wrappSucursal.departamento = lstDepartamentosSuc1;
        wrappSucursal.satInfo = wrappSatInfoDep2;

        //Sucursal 2
        ADR_Sucursales.wrapperSucursal wrappSucursal2 = new ADR_Sucursales.wrapperSucursal();
        wrappSucursal2.Nnombre = 'SUC2';
        wrappSucursal2.Direccion = 'Monterrey';
        wrappSucursal2.IdSucursal='5679';
        wrappSucursal2.departamento = lstDepartamentosSuc2;
        wrappSucursal2.satInfo = wrappSatInfoDep1;

        lstSucursales.add(wrappSucursal);
        lstSucursales.add(wrappSucursal);
        

        //Llenado de Departamentos//
        List<ADR_Sucursales.wrapperJefe> lstWrappJefesSuc1Dep1 = new List<ADR_Sucursales.wrapperJefe>();
        List<ADR_Sucursales.wrapperJefe> lstWrappJefesSuc2Dep1 = new List<ADR_Sucursales.wrapperJefe>();
        ADR_Sucursales.wrapperDepartamento wrappDepartamentoSuc1 = new ADR_Sucursales.wrapperDepartamento();

        wrappDepartamentoSuc1.Nombre = 'DEPA0';
        wrappDepartamentoSuc1.Clave = 34567;
        wrappDepartamentoSuc1.jefe= lstWrappJefesSuc1Dep1;

        ADR_Sucursales.wrapperDepartamento wrappDepartamentoSuc2 = new ADR_Sucursales.wrapperDepartamento();

        wrappDepartamentoSuc2.Nombre = 'DEPA0';
        wrappDepartamentoSuc2.Clave = 34567;
        wrappDepartamentoSuc2.jefe= lstWrappJefesSuc2Dep1;

        //Llenado de jefes
        ADR_Sucursales.wrapperJefe wrappJefeSuc1Dep1 = new ADR_Sucursales.wrapperJefe();
        ADR_Sucursales.wrapperAsistente wrappAssJefeSuc1Dep1 = new ADR_Sucursales.wrapperAsistente();
        wrappAssJefeSuc1Dep1.Nombre = 'Diana';
        ADR_Sucursales.wrapperAsistente wrappAssJefeSuc2Dep1 = new ADR_Sucursales.wrapperAsistente();
        wrappAssJefeSuc2Dep1.Nombre = 'Lorena';

        wrappJefeSuc1Dep1.Nombre= 'Jesus';
        wrappJefeSuc1Dep1.Clave='2345';
        wrappJefeSuc1Dep1.Puesto ='Calidad';
        wrappJefeSuc1Dep1.asistente = wrappAssJefeSuc1Dep1;
        lstWrappJefesSuc1Dep1.add(wrappJefeSuc1Dep1);
        ADR_Sucursales.wrapperJefe wrappJefeSuc2Dep1 = new ADR_Sucursales.wrapperJefe();
        wrappJefeSuc2Dep1.Nombre= 'Rodrigo';
        wrappJefeSuc2Dep1.Puesto='Produccion';
        wrappJefeSuc2Dep1.Clave = '1234';
        wrappJefeSuc2Dep1.asistente = wrappAssJefeSuc2Dep1;
        lstWrappJefesSuc2Dep1.add(wrappJefeSuc2Dep1);

        return wrapperBodega; 
    }
}

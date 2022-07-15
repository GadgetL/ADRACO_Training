/************************************************************************************************************
 * Name: ADR_SupervicionData
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Insert of data for wrapper object.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| Insert the data
*/
public class ADR_SupervicionData {
    public static ADR_Supervicion.wrapperSupervicion getData(){
        ADR_Supervicion.wrapperSupervicion wrappSupervicion = new ADR_Supervicion.wrapperSupervicion();
        List<ADR_Supervicion.wrapperEscuela> lstEscuelas = new list<ADR_Supervicion.wrapperEscuela>();
        wrappSupervicion.Nombre = 'Sur'; wrappSupervicion.Codigo = 'TM01'; wrappSupervicion.escuelas = lstEscuelas;
        
        List<ADR_Supervicion.wrapperMaestro> lstMaestros1 = new list<ADR_Supervicion.wrapperMaestro>();
        List<ADR_Supervicion.wrapperMaestro> lstMaestros2 = new list<ADR_Supervicion.wrapperMaestro>();
        //Director de escuela
        ADR_Supervicion.wrapperDirector wrappDirector1Esc1 = new ADR_Supervicion.wrapperDirector();
        wrappDirector1Esc1.Nombre ='Director 1'; wrappDirector1Esc1.Codigo = 'DE01';
        ADR_Supervicion.wrapperDirector wrappDirector2Esc2 = new ADR_Supervicion.wrapperDirector();
        wrappDirector2Esc2.Nombre ='Director 2'; wrappDirector2Esc2.Codigo = 'DE02';
        
        List<ADR_Supervicion.wrapperAlumnos> lstAlumnos1 = new list<ADR_Supervicion.wrapperAlumnos>();
        List<ADR_Supervicion.wrapperAlumnos> lstAlumnos2 = new list<ADR_Supervicion.wrapperAlumnos>();
        List<ADR_Supervicion.wrapperAlumnos> lstAlumnos3 = new list<ADR_Supervicion.wrapperAlumnos>();
        
        //Alumnos
        ADR_Supervicion.wrapperAlumnos wrappAlumno1 = new ADR_Supervicion.wrapperAlumnos();
          wrappAlumno1.Nombre = 'Jose Maria'; wrappAlumno1.Codigo = 'ANM2';
        ADR_Supervicion.wrapperAlumnos wrappAlumno2 = new ADR_Supervicion.wrapperAlumnos();
          wrappAlumno2.Nombre = 'Maria Santiago'; wrappAlumno2.Codigo = 'ANA84';
        ADR_Supervicion.wrapperAlumnos wrappAlumno3 = new ADR_Supervicion.wrapperAlumnos();
          wrappAlumno3.Nombre = 'Jorge Mendez'; wrappAlumno3.Codigo = '38MSD';
        ADR_Supervicion.wrapperAlumnos wrappAlumno4 = new ADR_Supervicion.wrapperAlumnos();
          wrappAlumno4.Nombre = 'Manuel Aguilar'; wrappAlumno4.Codigo = '8MSDJ';
        ADR_Supervicion.wrapperAlumnos wrappAlumno5 = new ADR_Supervicion.wrapperAlumnos();
          wrappAlumno5.Nombre = 'Noemi Navarro'; wrappAlumno5.Codigo = 'YF927';
        ADR_Supervicion.wrapperAlumnos wrappAlumno6 = new ADR_Supervicion.wrapperAlumnos();
          wrappAlumno6.Nombre = 'Gorge Federico'; wrappAlumno6.Codigo = 'M201';
        lstAlumnos1.add(wrappAlumno1);    lstAlumnos1.add(wrappAlumno4);
        lstAlumnos2.add(wrappAlumno2);    lstAlumnos2.add(wrappAlumno5);
        lstAlumnos3.add(wrappAlumno3);    lstAlumnos3.add(wrappAlumno6);
        //Escuelas
        ADR_Supervicion.wrapperEscuela wrappEscuela1 = new ADR_Supervicion.wrapperEscuela();
        wrappEscuela1.Nombre = 'Vazallo Lopez'; wrappEscuela1.Codigo = 'RM01'; 
        wrappEscuela1.director = wrappDirector1Esc1; wrappEscuela1.maestros = lstMaestros1;
        ADR_Supervicion.wrapperEscuela wrappEscuela2 = new ADR_Supervicion.wrapperEscuela();
        wrappEscuela2.Nombre = 'Sabino Crespo'; wrappEscuela2.Codigo = 'RM02'; 
        wrappEscuela2.director = wrappDirector2Esc2; wrappEscuela2.maestros = lstMaestros2;
        lstEscuelas.add(wrappEscuela1);  lstEscuelas.add(wrappEscuela2); 
        
        //Grupos
        ADR_Supervicion.wrapperGrupo wrappGrupo1 = new ADR_Supervicion.wrapperGrupo();
        wrappGrupo1.Nombre = 'Grupo A'; wrappGrupo1.Codigo = 'JRMA'; wrappGrupo1.alumnos = lstAlumnos1;
        ADR_Supervicion.wrapperGrupo wrappGrupo2 = new ADR_Supervicion.wrapperGrupo();
        wrappGrupo2.Nombre = 'Grupo B'; wrappGrupo2.Codigo = 'JRMA'; wrappGrupo2.alumnos = lstAlumnos2;
        ADR_Supervicion.wrapperGrupo wrappGrupo3 = new ADR_Supervicion.wrapperGrupo();
        wrappGrupo3.Nombre = 'Grupo C'; wrappGrupo3.Codigo = 'JRMA'; wrappGrupo3.alumnos = lstAlumnos3;
        //Maestros
        ADR_Supervicion.wrapperMaestro wrappMaestro1 = new ADR_Supervicion.wrapperMaestro();
        wrappMaestro1.Nombre = 'Jose Ramirez'; wrappMaestro1.Codigo = 'JRMA'; wrappMaestro1.grupos = wrappGrupo1;
        ADR_Supervicion.wrapperMaestro wrappMaestro2 = new ADR_Supervicion.wrapperMaestro();
        wrappMaestro2.Nombre = 'Myriam Hernandez'; wrappMaestro2.Codigo = 'MSMA'; wrappMaestro2.grupos = wrappGrupo3; 
        ADR_Supervicion.wrapperMaestro wrappMaestro3 = new ADR_Supervicion.wrapperMaestro();
        wrappMaestro3.Nombre = 'Fabian Reyes'; wrappMaestro3.Codigo = 'RFMA'; wrappMaestro3.grupos = wrappGrupo1;
        ADR_Supervicion.wrapperMaestro wrappMaestro4 = new ADR_Supervicion.wrapperMaestro();
        wrappMaestro4.Nombre = 'Alfonso Santos'; wrappMaestro4.Codigo = 'ASMA'; wrappMaestro4.grupos = wrappGrupo2;
        lstMaestros1.add(wrappMaestro1);   lstMaestros1.add(wrappMaestro2);
        lstMaestros2.add(wrappMaestro3);   lstMaestros2.add(wrappMaestro4);
        
        
        return wrappSupervicion;
    }

}
global class ADR_Escuelas {
    
 global class wrapperSupervicion{
     public Integer Codigo  { get; set; }
     public String Nombre  { get; set; }
     public List<wrapperEscuelas> Escuelas  { get; set; }
 }
  global class wrapperEscuelas{
     public Integer Codigo  { get; set; }
     public String Nombre  { get; set; }
     public List<wrapperMaestros> Maestros  { get; set; }
     public wrapperDirector Director { get; set; } 
 }   
    global class wrapperMaestros{
     public Integer Codigo  { get; set; }
     public String Nombre  { get; set; }
     public wrapperGrupo Grupo { get; set; }
    }
    
     global class wrapperAlumnos{
     public integer Codigo  { get; set; }
     public String Nombre  { get; set; }
    }
    global class wrapperDirector{
     public integer Codigo  { get; set; }
     public String Nombre  { get; set; } 
    }
    
     global class wrapperGrupo{
      public String Grado  { get; set; }   
      public String Letra  { get; set; }   
      public List<wrapperAlumnos> Alumnos  { get; set; }
    }   
}
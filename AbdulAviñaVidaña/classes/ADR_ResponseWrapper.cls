global with sharing class ADR_ResponseWrapper {
    global class wrapperUser{
           public Integer page { get; set; }
        public Integer per_page { get; set; }
        public Integer total { get; set; }
        public Integer total_pages { get; set; }
        public List<wrapperData> data { get; set; }
        public wrapperSupport support { get; set; }
           
    }
    global class wrapperData{
        public Integer Id { get; set; }
        public string Email { get; set; }
        public string First_name { get; set; }
        public string Last_name { get; set; }
        public string Avatar { get; set; }
    }
    
     global class wrapperSupport{
        public string Url { get; set; }
        public string Text { get; set; }
       
    }
    
    global class wrapperVehicles{
        public Integer Count { get; set; }
        public string Message { get; set; }
        public object SearchCriteria { get; set; }
        public List<wrapperResult> Results { get; set; }
           
    }
    global class wrapperResult{
        public Integer Make_ID { get; set; }
        public string Make_Name { get; set; }
 
    }
  
    
    global class wrapperDataRandom{
            
            
        public integer id { get; set; }
        public string title { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public integer clues_count { get; set; }
            
      
        
    }
    
    global class wrapperRandom{   	
        
        public integer id { get; set; }
        public string answer { get; set; }
        public string question { get; set; }
        public integer value { get; set; }
        public DateTime airdate { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public integer category_id { get; set; }
        public integer game_id { get; set; }
        public object invalid_count { get; set; }
        public wrapperDataRandom category { get; set; }
   
    }
    
	global class wrapperRoot{
         public List<wrapperRandom> Data {get;set;}
    }  
    
    global class wrapperRootBreach{
         public List<wrapperBreach> Data {get;set;}
    }  
    
    global class wrapperBreach{
         public string Name { get; set; }
        public string Title { get; set; }
        public string Domain { get; set; }
        public string BreachDate { get; set; }
        public string AddedDate { get; set; }
        public string ModifiedDate { get; set; }
        public Integer PwnCount { get; set; }
        public string Description { get; set; }
        public string LogoPath { get; set; }
        public List<string> DataClasses { get; set; }
        public boolean IsVerified { get; set; }
        public boolean IsFabricated { get; set; }
        public boolean IsSensitive { get; set; }
        public boolean IsRetired { get; set; }
        public boolean IsSpamList { get; set; }
        public boolean IsMalware { get; set; }
    }
}
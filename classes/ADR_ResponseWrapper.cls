global with sharing class ADR_ResponseWrapper {
    global class wrapperUser{
        
        public Integer page{get;set;}
    	public Integer per_page{get;set;}
    	public Integer total{get;set;}
    	public Integer total_pages{get;set;}
        
        public List<wrapperData> data {get;set;}
        public wrapperSupport support {get;set;}
        
        
    }
    global class wrapperData{
        public integer Id {get;set;}
    	public String email {get;set;}
    	public String first_name {get;set;}
    	public String last_name {get;set;}
    	public String avatar {get;set;}
	        
    }
    global class wrapperSupport{
       
    	public String url {get;set;}
    	public String text {get;set;}
	        
    }
    global class wrapperDataVehicles{
        public Integer Make_ID { get; set; }
        public string Make_Name { get; set; }
	        
    }
    global class wrapperVehicles{
        
        public Integer Count { get; set; }
        public string Message { get; set; }
        public object SearchCriteria { get; set; }
        public List<wrapperDataVehicles> Results { get; set; }
 
    }
    global class wrapperDataRandom{
        public Integer id { get; set; }
        public string title { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public Integer clues_count { get; set; }
	        
    }
    global class wrapperDataRoot{
        public List<wrapperRandom> Data { get; set; }
	        
    }
     global class wrapperRandom{
        
        public Integer id { get; set; }
        public string answer { get; set; }
        public string question { get; set; }
        public Integer value { get; set; }
        public DateTime airdate { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public Integer category_id { get; set; }
        public object game_id { get; set; }
        public object invalid_count { get; set; }
        public wrapperDataRandom category { get; set; }
 
    }
    global class wrapperBreaches{
        
        public string Name { get; set; }
        public string Title { get; set; }
        public string Domain { get; set; }
        public string BreachDate { get; set; }
        public DateTime AddedDate { get; set; }
        public DateTime ModifiedDate { get; set; }
        public Integer PwnCount { get; set; }
        public string Description { get; set; }
        public string LogoPath { get; set; }
        public List<string> DataClasses { get; set; }
        public Boolean IsVerified { get; set; }
        public Boolean IsFabricated { get; set; }
        public Boolean IsSensitive { get; set; }
        public Boolean IsRetired { get; set; }
        public Boolean IsSpamList { get; set; }
        public Boolean IsMalware { get; set; }
 
    }
    global class wrapperBreachesRoot{
        public List<wrapperBreaches> Data { get; set; }
    }

}
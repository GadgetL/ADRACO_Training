global with sharing class ADR_ResponseWrapper {
    
    //---------------------------------------------------
    //* User API
    
    global class WrapperUser {
        public Integer page { get; set; }
        public Integer per_page { get; set; }
        public Integer total { get; set; }
        public Integer total_pages { get; set; }
        public List<WrapperData> data { get; set; }
        public WrapperSupport support;
    }
    
    global class WrapperData {
        public Integer id { get; set; }
        public String email { get; set; }
        public String first_name { get; set; }
        public String last_name { get; set; }
        public String avatar { get; set; }
    }
    
    global class WrapperSupport {
        public String url { get; set; }
        public String text { get; set; }
    }
    
	//-----------------------------------------------------
	//* Vehicle API
	
    global class WrapperVehicle {
        public Integer Count { get; set; }
        public String Message { get; set; }
        public WrapperSearchVehicle SearchCriteria { get; set; }
        public List<WrapperDataVehicle> Results { get; set; }
    }
    
    global class WrapperDataVehicle {
        public Integer Make_ID { get; set; }
        public String Make_Name { get; set; }
    }
    
    global class WrapperSearchVehicle {
        public String Search { get; set; }
    }
    
	//-----------------------------------------------------
	//* Random API
	
    global class WrapperRandom {
        public Integer id { get; set; }
        public String answer { get; set; }
        public String question { get; set; }
        public Integer value { get; set; }
        public DateTime airdate { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public Integer category_id { get; set; }
        public String game_id { get; set; }
        public String invalid_count { get; set; }
        public WrapperCategoryRandom category { get; set; }
    }
    
    global class WrapperCategoryRandom {
        public Integer id { get; set; }
        public String title { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public Integer clues_count { get; set; }
    }
    
    //-----------------------------------------------------
	//* Breaches API
	
    global class WrapperBreach {
        public List<WrapperDataBreach> data { get; set; }
    }
	
    global class WrapperDataBreach {
        public String Name { get; set; }
        public String Title { get; set; }
        public String Domain { get; set; }
        public String BreachDate { get; set; }
        public DateTime AddedDate { get; set; }
        public DateTime ModifiedDate { get; set; }
        public Integer PwnCount { get; set; }
        public String Description { get; set; }
        public String LogoPath { get; set; }
        public List<String> DataClasses { get; set; }
        public Boolean IsVerified { get; set; }
        public Boolean IsFabricated { get; set; }
        public Boolean IsSensitive { get; set; }
        public Boolean IsRetired { get; set; }
        public Boolean IsSpamList { get; set; }
        public Boolean IsMalware { get; set; }
    }
    
}
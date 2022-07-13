global with sharing class ADR_ResponseWrapper {
    global class wrapperUser{
        public Integer page {get; set;}
        public Integer per_page {get; set;}
        public Integer total {get; set;}
        public Integer total_pages {get; set;}      
        public List<wrapperData> data {get; set;}
    }
    
    global class wrapperData{
        public Integer id {get; set;}
        public String email {get; set;}
        public String first_name {get; set;}
        public String last_name {get; set;}
        public String avatar {get; set;}
    }
    
    global class wrapperSupport{               
        public String url {get; set;}
        public String text {get; set;}        
    }
    
    global class wrapperVehicle{
        public Integer Count {get; set;}
        public String Message {get; set;}
        public Object SearchCriteria {get; set;}            
        public List<wrapperDataVehicle> Results {get; set;}
    }
    
    global class wrapperDataVehicle{
        public Integer Make_ID {get; set;}
        public String Make_Name {get; set;}
    }
    
    global class Category{
        public Integer id {get; set;}
        public String title {get; set;}
        public String created_at {get; set;}
        public String updated_at {get; set;}
        public Integer clues_count {get; set;}
    }
    
    global class wrapperRandom{
        public Integer id {get; set;}
        public String answer {get; set;}
        public String question {get; set;}
        public Integer value {get; set;}      
     	public String airdate {get; set;}
        public String created_at {get; set;}
        public String updated_at {get; set;}
        public Integer category_id {get; set;}
        public Integer game_id {get; set;}
        public Object invalid_count {get; set;}   
        public Category category {get; set;}        	
    }
    
    global class wrapperRandomRoot{
        public List<wrapperRandom> Data {get; set;}
	}
    
    global class wrapperBreaches{
        public String Name {get; set;}
        public String Title {get; set;}
        public String Domain {get; set;}           
     	public String BreachDate {get; set;}
        public String AddedDate {get; set;}
        public String ModifiedDate {get; set;}
        public Integer PwnCount {get; set;}
        public String Description {get; set;}
        public String LogoPath {get; set;} 
        public List<String> DataClasses {get; set;}          
        public boolean IsVerified {get; set;}
        public boolean IsFabricated {get; set;}        
        public boolean IsSensitive {get; set;}
        public boolean IsRetired {get; set;}
        public boolean IsSpamList {get; set;}
        public boolean IsMalware {get; set;}                   
    }   
    
    global class wrapperBreachesRoot{
        public List<wrapperBreaches> Data {get; set;}
	}
}
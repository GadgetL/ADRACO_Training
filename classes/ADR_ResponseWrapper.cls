global with sharing class ADR_ResponseWrapper {
    global class wrapperUser{
        
        public integer page { get; set; }
        public integer per_page { get; set; }
        public integer total { get; set; }
        public integer total_pages { get; set; }
        public List<wrapperData> data {get; set;}
        public wrapperSupport support {get; set;}   	
    }
    
    global class wrapperData{
        public integer Id { get; set; }
        public string Email { get; set; }
        public string First_name { get; set; }
        public string Last_name { get; set; }
        public string avatar { get; set; }
    }
    
    global class wrapperSupport{
        public string url { get; set; }
        public string text { get; set; }
    }
    
    global class wrapperDataA{
        public integer Count { get; set; }
        public string Message { get; set; }
        public object SearchCriteria { get; set; }
        public List<wrapperResult> results { get; set; }
    }
    
    global class wrapperResult{
        public integer Make_ID { get; set; }
        public string Make_Name { get; set; }
    }
    
     global class Datum{
       public integer id { get; set; }
        public string answer { get; set; }
        public string question { get; set; }
        public integer value { get; set; }
        public string airdate { get; set; }
        public string created_at { get; set; }
        public string updated_at { get; set; }
        public integer category_id { get; set; }
        public object game_id { get; set; }
        public object invalid_count { get; set; }
        public Category category { get; set; }
    }
    
    global class Category{
        
        public integer id { get; set; }
        public string title { get; set; }
        public string created_at { get; set; }
        public string updated_at { get; set; }
        public integer clues_count { get; set; }
    }
    
    global class Root{
        public List<Datum> Data { get; set; }
    }
    
    public class wrapperBreach{
        public string Name { get; set; }
        public string Title { get; set; }
        public string Domain { get; set; }
        public string BreachDate { get; set; }
        public string AddedDate { get; set; }
        public string ModifiedDate { get; set; }
        public integer PwnCount { get; set; }
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
    
    global class wrapperRootBreach{
        public List<WrapperBreach> Data { get; set; }
    }
}
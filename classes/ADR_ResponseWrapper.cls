global with sharing class ADR_ResponseWrapper {
    global class wrapperUser{
        public Integer page { get; set; }
        public Integer per_page { get; set; }
        public Integer total { get; set; }
        public Integer total_pages { get; set; }
        public List<wrapperData> data {get; set;}
        public wrapperSupport support {get; set;}
       
    }
    global class wrapperData{
        public integer Id { get; set; }
        public string email { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string avatar { get; set; }
    }
    
    global class wrapperSupport{
        public string url { get; set; }
        public string text { get; set; }        
    }
    
    global class wrapperResults{
        public Integer Make_ID { get; set; }
        public string Make_Name { get; set; }
        
    }
    
    global class wrapperMaker{
        public Integer Count { get; set; }
        public string Message { get; set; }
        public object SearchCriteria { get; set; }
        public List<wrapperResults> Results {get; set;}
    }
    
    public class WrapperCategory
    {
        public Integer id { get; set; }
        public string title { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public Integer clues_count { get; set; }
    }

    public class WrapperDatum
    {
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
        public WrapperCategory category { get; set; }
    }

    public class WrapperRoot
    {
        public List<WrapperDatum> Data { get; set; }
    }
    
    
    
    // Root myDeserializedClass = JsonConvert.DeserializeObject<Root>(myJsonResponse);
    public class Datum
    {
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
        public boolean IsVerified { get; set; }
        public boolean IsFabricated { get; set; }
        public boolean IsSensitive { get; set; }
        public boolean IsRetired { get; set; }
        public boolean IsSpamList { get; set; }
        public boolean IsMalware { get; set; }
    }

    public class Root
    {
        public List<Datum> Data { get; set; }
    }
}
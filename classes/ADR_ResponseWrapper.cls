global with sharing class ADR_ResponseWrapper {
    global class wrapperUser{
        public integer page { get; set; }
        public integer per_page { get; set; }
        public integer total { get; set; }
        public integer total_pages { get; set; }
        public List<wrapperData> data { get; set; }
        public wrapperSupport  support { get; set; }
    }
    
    global class wrapperData{
    	public integer Id { get; set; }
        public string Email { get; set; }
        public string First_name { get; set; }
        public string Last_name { get; set; }
        public string Avatar { get; set; }
    }
    
     global class wrapperSupport{
        public string url { get; set; }
        public string text { get; set; }
    }

}
/************************************************************************************************************
 * Name: ADR_ResponseWrapper
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Create of wrapper object for to use in a request service web with method get.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| Create of wrapper object
*/
global with sharing class ADR_ResponseWrapper {
    global class wrapperUser{
        public integer page { get; set; }
        public integer per_page { get; set; }
        public Integer total { get; set; }
        public integer total_pages { get; set; }
        public List<wrapperData> Data { get; set; }
        public wrapperSupport support { get; set; }
        
    }
    global class wrapperData{
        public integer id { get; set; }
        public string email { get; set; }
        public string first_name { get; set; }
        public string last_name { get; set; }
        public string avatar { get; set; }
    }
    global class wrapperSupport{
        public string url { get; set; }
        public string text { get; set; }
    }
    
    
    global class wrapperRoot
    {
        public integer Count { get; set; }
        public string Message { get; set; }
        public string SearchCriteria { get; set; }
        public List<wrapperResult> Results { get; set; }
    }
    global class wrapperResult
    {
        public integer Make_ID { get; set; }
        public string Make_Name { get; set; }
    }

}
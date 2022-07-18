/***************************************************************************************
 * Name: ADR_ResponseWrapper
 * Test: ADR_ResponseWrapper_Test
 * Author: Valentín López Morales
 * Description: Data API consumption
****************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change Description	
----------------------------------------------------------------------------------------
Valentín López	| 23-06-22 			| v0.1 				| Conection with Wrapper Data
*/
//"with sharing" significa que estas compartiendo 
global with sharing class ADR_ResponseWrapper {
    global class wrapperUser{
        public integer page { get; set; }
        public integer per_page { get; set; }
        public integer total { get; set; }
        public integer total_pages { get; set; }
        public List<wrapperData> data { get; set; }
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
}
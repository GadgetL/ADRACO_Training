/***************************************************************************************
 * Name: ADR_ResponseWrapperRandom
 * Test: ADR_ResponseWrapperRandom_Test
 * Author: Valentín López Morales
 * Description: Data API consumption
****************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change Description	
----------------------------------------------------------------------------------------
Valentín López	| 25-06-22 			| v0.1 				| Conection with Random Data
*/
global with sharing class ADR_ResponseWrapperRandom {
    
    public class wrapperRandom{
        public List<wrapperData> Data { get; set; }
    }
    
    public class wrapperData{
        public integer id { get; set; }
        public string answer { get; set; }
        public string question { get; set; }
        public integer value { get; set; }
        public DateTime airdate { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public integer category_id { get; set; }
        public object game_id { get; set; }
        public object invalid_count { get; set; }
        public wrapperCategory category { get; set; }
    }
    
    public class wrapperCategory{
        public integer id { get; set; }
        public string title { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public integer clues_count { get; set; }
    }
}
/***************************************************************************************
 * Name: ADR_ResponseWraperBreaches
 * Test: ADR_ResponseWraperBreaches_Test
 * Author: Valentín López Morales
 * Description: Data API consumption
****************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change Description	
----------------------------------------------------------------------------------------
Valentín López	| 15-07-22 			| v0.1 				| Conection with Breaches Data
*/
global with sharing class ADR_ResponseWraperBreaches {
    
    global class wrapperBreache{
        public List<wrapperData> Data { get; set; }
    }
    global class wrapperData{
        public string Name { get; set; }
        public string Title { get; set; }
        public string Domain { get; set; }
        public string BreachDate { get; set; }
        public DateTime AddedDate { get; set; }
        public DateTime ModifiedDate { get; set; }
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
}
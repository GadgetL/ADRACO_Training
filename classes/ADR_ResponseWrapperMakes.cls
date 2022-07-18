/***************************************************************************************
 * Name: ADR_ResponseWrapperMakes
 * Test: ADR_ResponseWrapperMakes_Test
 * Author: Valentín López Morales
 * Description: Data API consumption
****************************************************************************************
LastModifiedBy	| LastModifiedDate	| Modification Id	| Change Description	
----------------------------------------------------------------------------------------
Valentín López	| 25-06-22 			| v0.1 				| Conection with Makes Data
*/
global with sharing class ADR_ResponseWrapperMakes {
    global class wrapperMake{
        public integer Count { get; set; }
        public string Message { get; set; }
        public object SearchCriteria { get; set; }
        public List<wrapperData> Results { get; set; }
    }
    
    global class wrapperData{
        public integer Make_ID { get; set; }
        public string Make_Name { get; set; }
    }

}
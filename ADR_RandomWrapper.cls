/************************************************************************************************************
 * Name: ADR_RandomWrapper
 * Class test: None
 * Autor: Francisco Reyes
 * Description: Create of wrapper object for to use in a request service web with method get.
 * ***********************************************************************************************************
 LastModifiedBy      | LastModifiedDate      | Modification Id   | Change description
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
 Francisco Reyes		| 13-07-2022			| v0.1				| Create of wrapper object
*/
global with sharing class ADR_RandomWrapper {
    global class Root
    {
        public List<wrapperData> data { get; set; }
    }
    global class wrapperData
    {
        public integer id { get; set; }
        public string answer { get; set; }
        public string question { get; set; }
        public integer value { get; set; }
        public DateTime airdate { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public integer category_id { get; set; }
        public string game_id { get; set; }
        public string invalid_count { get; set; }
        public wrapperCategory category { get; set; }
    }
    global class wrapperCategory
    {
        public integer id { get; set; }
        public string title { get; set; }
        public DateTime created_at { get; set; }
        public DateTime updated_at { get; set; }
        public integer clues_count { get; set; }
    }
    
    global class wrapperBreaches
    {
        public List<wrapperBreachesdata> dataBreaches { get; set; }
    }
    global class wrapperBreachesdata
    {
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
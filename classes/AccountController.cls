public with sharing class AccountController {
    public static List<Opportunity> getAllActiveAccounts() {
        return [SELECT Name,Description FROM Opportunity Order By createdDate ASC LIMIT 10];
      }
}
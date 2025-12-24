public with sharing class AccountController {
    @AuraEnabled
    public static List<Account> getAccounts() {
        return [SELECT Id, Name, BillingCity, BillingCountry, BillingPostalCode, BillingState, BillingStreet FROM Account];
    }

    @AuraEnabled
    public static Account getAccount(Id accountId) {
        return [SELECT Id, Name, BillingCity, BillingCountry, BillingPostalCode, BillingState, BillingStreet FROM Account WHERE Id = :accountId];
    }
}
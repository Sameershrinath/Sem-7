public with sharing class AccountController {
   
    @AuraEnabled(cacheable=true)
    public static Account getAccountRecord(Id recordId){
        return [SELECT Id, Name, Industry, Phone FROM Account WHERE Id = :recordId LIMIT 1];
    }
}
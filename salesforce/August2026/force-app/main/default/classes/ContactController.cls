public with sharing class ContactController {
    public static void updateNoOfContacts(){
        Map<id,Contact> accInContact=new Map<id,Contact>([Select id,accountid from contact]);
        
        Set<ID> accidset=new set<id>();
        for(string con:accInContact.keyset()){
            accidset.add(accInContact.get(con).accountid);
        }
        
        
        //List<Account> accToBeUpdate=[Select id,Number_Of_Contacts__c from account where id in: accInContact];
        
        List<Account> acc=[select id,Number_Of_Contacts__c,(select id from contacts) from account where id in: accidset];
        
        for(Account a:acc){
            a.Number_Of_Contacts__c=a.contacts.size();
        }
        
        try{
            update acc;
        }
        
        catch(exception e){
            system.debug(e.getmessage());
        }  
    }

     @AuraEnabled(cacheable=true)
        public static List<Contact> getContactList(){
           return [SELECT Id,Name,Title,Phone,Email  FROM  Contact WITH SECURITY_ENFORCED LIMIT 10];
        }
}
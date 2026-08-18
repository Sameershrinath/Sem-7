public class FutureMethod1 {
	
    @future
    public static void countReleatedContact(){
        List<Account> accList=[SELECT id from Account];
        List<Account> accContact=[select (select id from contacts),Name from account where Id in:accList];
        
        for(Account acc:accContact){
            System.debug(acc.Name);

            System.debug(acc.Contacts.size());
        }
       	
    }
}
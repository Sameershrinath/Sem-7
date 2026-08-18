public class FutureApex {
    @future
    public static void futureMethod(){
        
        List<Account> accounts=[SELECT Id,Name FROM Account LIMIT 10];
        
        for(Account acc:accounts){
            system.debug(acc.Name);
        }
    }

}
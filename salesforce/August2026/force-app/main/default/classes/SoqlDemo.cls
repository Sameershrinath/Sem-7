public class SoqlDemo {
	
    public static void demo(){
        
list<Account> acclist=[select id,name from account];
for(Account acc: acclist){
    system.debug(acc);
}
    }
}
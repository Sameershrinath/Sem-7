public class Deletesoql {

    public static void deletion(){
        
        list<account> alltest=[select name,id,phone from account where name like 'test%' limit 10];
            system.debug(alltest.size());
        delete alltest;
    }
}
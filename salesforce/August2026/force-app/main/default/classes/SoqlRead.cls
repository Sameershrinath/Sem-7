public class SoqlRead {
    public static void read(){
        
        list<Account> accountdet =[select name, id,phone from account where phone ='123456789'];
        
        
        for(account acc:accountdet ){
            
            if (acc.Phone=='123456789'){
                acc.phone='111111111';
                update acc;
            }
        }
        
  
        
    }

}
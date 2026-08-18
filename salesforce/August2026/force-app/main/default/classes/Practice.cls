public class Practice {

    public static void createAccount(Integer num){
        List<Account> accList=new List<Account>();
        
        for(Integer i=1;i<=num;i++){
            Account acc =new Account();
            acc.name='Lindedin'+i;
           	acclist.add(acc);
        }
        INSERT accList;
    }
    
    public static void updateAccount(){
        List<Account> accList = new List<Account>();
        accList=[SELECT Id FROM Account where name like 'Lindedin%'];
        
        for(Account acc:accList){
            acc.Phone='999999999';
        }
        UPDATE accList;
        
        
    }
    
    public static void deleteAccount(){
         List<Account> accList = new List<Account>();
        accList=[SELECT Id FROM Account where name like 'Practice%'];
		
        DELETE accList;
        
    }
    
    
    
    
    
    
    
    public static void inlineCond(Integer num){
        System.debug(num<10?'Smaller than 10':'Greater than 10');
    }
    
    public static void condiStm(Integer num){
        if(num<10){
            System.debug('The number is smaller than 10');
        }
        else if (num==10){
            System.debug('The number is equal to 10');
        }
        else{
            System.debug('The number is Greater than 10');
        }
        
    }
    
    
   // public static void areaSquare(){
    //    System.debug(num*num);
   // }
    
    // area of circle -> 3.17*r*r
    
    public static void areaCircle(Integer radius){
        System.debug(3.17*radius*radius);
    }
    
    public static void StrConcat(String a,String b){
        System.debug(a+b);
    }
    
}
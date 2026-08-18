@isTest
public class AccountTriggerHandlerTest {
    
    @isTest
    public static void TestPopulateRatingToCold(){
        
        List<account> accList = new List<Account>();
        
        for(integer i=0;i<5;i++){
            Account acc= new Account(name='Test account '+i);
            acclist.add(acc);
        }
        
        test.startTest();
        insert accList;
        test.stopTest();
        
        List<account> updatedaccList =[SELECT id, Rating from account where id in: accList];
        
        for(Account acc:updatedaccList){
            
            system.assertEquals('Cold',acc.rating,'Rating should have been populated as Cold');
        }
        
    }
    
    
}
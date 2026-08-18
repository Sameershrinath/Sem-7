public class SobjectDemo {
    public static void accountObject(){
       Account acc=new Account();
       contact cont=new contact();
        
        acc.Name='Test Acc 124';
        acc.AnnualRevenue=12345695;
        acc.Phone='1665689';
        acc.Active__c='No';
        acc.Rating='Warm';
        
        insert acc;
        
        cont.FirstName='test apex';
        cont.LastName='code';
        cont.Phone='12345678';
        cont.Email='sam@gmail.com';
        cont.AccountId=acc.Id;
        insert cont;
    }

    //create contact Record - FirstName, LastName , Phone, Email
    public static void createContact(){
        Contact cont=new Contact();
        
       cont.FirstName='test';
        cont.LastName='By Apex';
        cont.Phone='123456789';
        cont.Email='test@gmail.com';
        
        insert cont;
    }
    
    //create opportunity record - name, closedate, stage,amount
    public static void createOpportunity(){
        Opportunity opp=new opportunity();
        Date mydate=date.newinstance(2004,2,17);
        opp.Name='test Opportunity';
        opp.CloseDate=mydate;
        opp.StageName='New';
        opp.Amount=455.00;
        
        insert opp;
    }
    
}
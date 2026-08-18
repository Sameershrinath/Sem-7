public class AccountTriggerHandler {
    
    public static void createRelatedOpportunity(List<Account> accList){
        List<Opportunity> oppList=new List<Opportunity>();
        
        for(Account acc : accList){
            Opportunity opp=new Opportunity();
            opp.AccountId=acc.Id;
            opp.stageName='Prospecting';
            opp.Name='Related opportunity '+acc.Name;
            opp.CloseDate = Date.today().addDays(30);            
            oppList.add(opp);
           
        }
        
        Insert oppList;
        
    }
    
    public static void preventDeletionRating(List<Account> accList){
        
        if(accList != null && !accList.isEmpty()){
            for(Account acc:accList){
                if(acc.Rating=='Hot'){
                    acc.addError('You cannot delete the Hot rated Account');
                }
            }
        }
    }
    
    
    
    
    public static void setRating(List<Account> accList){
        
        if(accList!=null && !accList.isEmpty()){
            for(Account acc : accList){
                if(acc.AnnualRevenue>500000){
                    acc.Rating='Hot';
                  
                }
                else{
                    acc.Rating='Cold';
                }
            }
        }
    }
    
    
    
    
    
    
    
    
    public static void updationOfOwnership(List<Account> accList){
        for(Account acc:accList){
            if(acc.Industry=='Banking'){
                acc.Ownership='Public';
            }
        }
    }
    
    
    public static void createRelatedContact(List<Account> accList){
        if(accList!= null){
             List<Contact> conList=new List<Contact>();
            
            for(Account acc:accList){
                Contact con=new Contact();
           		con.AccountId=acc.Id;
                con.LastName='Auto created';
                con.Phone=acc.Phone;
                conList.add(con);
            }
            INSERT conList;
        }
       
        
    }
    
    
    public static void preventDeletion(List<Account> accList){
        if(accList !=null && !accList.isempty()){
            for(Account acc : accList){
                if(acc.Industry=='Banking'){
                    acc.addError('Banking Industry cannot be deleted');
                }
            }
        }
    }

}
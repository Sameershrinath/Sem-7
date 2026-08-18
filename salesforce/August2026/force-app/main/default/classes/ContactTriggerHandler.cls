public class ContactTriggerHandler {
    public static void avoidDuplicate(List<Contact> conList){
		 
	List<String> newEmails= new List<String>();
        for(Contact con:conList){
            if(con.email!=null){
                newEmails.add(con.Email.toLowerCase());
            }
        }
	       
     Map<String,Contact> existingEmails=new Map<String,Contact>();
        
        for(Contact con:[SELECT email FROM Contact where email in :newEmails]){
            
            existingEmails.put(con.email.toLowerCase(),con);
        }
        
        Set<String> seenEmails=new Set<String>();
        
        for(Contact con:ConList){
            if(con.email!=null){
                if(existingEmails.containsKey(con.email.toLowerCase())){
                    con.addError('duplicate Email Alert from trigger');
                }
                   else if (seenEmails.contains(con.Email)){
                       con.addError('duplicate email in the same transection');
                   }
                   seenEmails.add(con.Email);
                   
            }
        }
               
       
    }
}
trigger AccountTrigger on Account (before insert,before update,after insert,before delete) {
    
    if(trigger.isdelete && trigger.isbefore){
        AccountTriggerHandler.preventDeletionRating(trigger.old);
        
    }
    
    
    if(trigger.isbefore && (trigger.isinsert || trigger.isupdate)){
        AccountTriggerHandler.setRating(Trigger.new);
    }
     
    
    if(trigger.isbefore && (trigger.isupdate || trigger.isinsert)){
        AccountTriggerHandler.updationOfOwnership(trigger.new);
    }
    if(trigger.isafter && trigger.isinsert){
        AccountTriggerHandler.createRelatedContact(trigger.new);
    }
    if(trigger.isbefore && trigger.isdelete){
        AccountTriggerHandler.preventDeletion(trigger.old);
    }
    
    if(trigger.isafter && trigger.isinsert){
        AccountTriggerHandler.createRelatedOpportunity(trigger.new);
    }

}
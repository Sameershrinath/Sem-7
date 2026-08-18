trigger ContactTrigger on Contact (before insert,before update) {
    
    if(trigger.isbefore && (trigger.isinsert ||trigger.isupdate)){
        ContactTriggerHandler.avoidDuplicate(trigger.new);
    }

    

}
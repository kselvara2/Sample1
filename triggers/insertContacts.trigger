trigger insertContacts on Account(after insert){
    for(Account acc : trigger.New){
        List<Account> acc1 = [select id from account where id=:acc.id];
        List<Contact> con1 = new List<Contact>();
        for (Contact con2: con1){
            
        }
    }
}
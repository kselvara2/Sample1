trigger UpdateAccount on Account (after insert) {
    Account acc1 = new Account();
    for (Account acc:Trigger.new){
           acc1= [select Description from Account where id = :acc.ParentId];
        try{
            acc.Description = acc1.Description;
        } catch(DmlException e){
            
        }
    }
}
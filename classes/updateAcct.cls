public class updateAcct {
    public static void updateAcct(){
        Account acc = new Account(name='tryCatch');
        insert acc;
        Account myAcct = [select id,BillingCity from Account where id=:acc.Id];
        try{
            myAcct.BillingCity = 'Edison';
            update myAcct;
        } catch(DmlException e) {
            
        }
    }

}
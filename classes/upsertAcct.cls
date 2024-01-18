public class upsertAcct {
    public static void upsertAcct(){
        List<Account> acc = new List<Account>{
            new Account(name='tryCatch',BillingCity='Iselin'),
            new Account(name='tryCatch1',BillingCity='Edison')
        };
        upsert acc;
          
    }
}
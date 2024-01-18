public class NewAccounts implements Schedulable {
     public void execute(SchedulableContext con){
        Account store = new Account();
        store.name = 'The Tea Factory';
        store.AccountNumber = '35628112';
        store.phone='1234567890';
        insert store;
    }
}
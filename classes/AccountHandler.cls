public class AccountHandler {
    public static void insertAccount(integer n){
        integer counter=1;
        List<Account> addAccounts = new List<Account>();
        while(counter<n){
            Account accname = new Account();
            accname.Name='Acme Inc' + counter;
            accName.AccountNumber = 'A000' + counter;
            counter = counter +1;
            addAccounts.add(accname);
        }
       insert addAccounts;
    }
}
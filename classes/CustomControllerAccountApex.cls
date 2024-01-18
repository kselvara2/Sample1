public class CustomControllerAccountApex {
    private String sortOrder='Name';
    
    
    public list<Account> getAccount(){
        
        list<Account> resultAcc= database.query(
            			'select name,AccountNumber ' +
            			'from account ' +
            			'Order by ' + sortOrder + ' DESC ' +
            			'limit 10'
        );
        return resultAcc;
    }
public void sortByName() {
    this.sortOrder = 'AccountNumber';
}
}
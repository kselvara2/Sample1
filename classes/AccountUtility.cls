public class AccountUtility {
    public static void viewAnnualRevenue(){
        list<account> accountsList = [select name,AnnualRevenue from Account];
        for(account acc : accountslist){
            string acctRev = 'Account Name: ' + acc.Name + 'Annual Revenue: ' + acc.AnnualRevenue;
            system.debug(acctRev);
        }
    }
}
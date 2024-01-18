public class deleteAccounts {
    public static void deleteAccounts(){
        List<Account> accLst = [select id from Account where name='tryCatch' ALL ROWS];
        try {
            undelete accLst;
        } catch(DmlException e){
            
        }
    }
}
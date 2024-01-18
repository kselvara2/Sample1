public class CustomControllerApex {
    public list<contact> getcontacts(){
        list<contact> results = database.query('select firstname,lastname from contact limit 10');
        return results;
    }

}
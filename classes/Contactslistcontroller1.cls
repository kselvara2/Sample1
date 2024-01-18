public class Contactslistcontroller1 {
   private string sortOrder = 'LastName';
public list<contact> getContacts(){
        
        list<contact> results = Database.query(
            'select firstname,lastname '+
            'from contact '+
            'LIMIT 10'
        );
        return results;
       }
    public void sortByLastName(){
        this.sortOrder = 'LastName';
    }
    public void sortByFirstName(){
        this.sortOrder = 'FirstName';
    }
}
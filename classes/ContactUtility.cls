public class ContactUtility {
    public static void viewContacts(){
        list<contact> listofcontacts = [select firstname,lastname from contact where firstname like 'B%'];
        for (contact con : listofcontacts){
            string fullname = 'FirstName' + con.FirstName + ', LastName' + con.LastName;
            system.debug(fullname);
        }
    }	
}
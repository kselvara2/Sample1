public class AccountProcessor {
    @future(callout=true)
    public static void countContacts(set<Id> setId){
       list<Account> accList =[select id,Number_Of_Contacts__c, (select id from contacts) from account where Id in :setId];
        for(Account acc:accList){
            list<Contact> conList = acc.Contacts;
            acc.Number_Of_Contacts__c=conList.size();
        }
        update accList;
    }
}
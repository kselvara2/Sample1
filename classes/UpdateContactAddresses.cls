global class UpdateContactAddresses implements	Database.Batchable<sObject>,Database.stateful{
    global integer recordsp = 0;
    global database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(
            'select ID, BillingStreet ' +
            '(select ID,MailingStreet from contacts)' +
            'from Account ' +
            'where BillingCountry = \'India\''  
        );
    }
    global void execute(Database.BatchableContext bc,list<Account> scope){
        list<contact> contacts = new List<contact>();
        for (Account account : scope){
            for (Contact contact : account.contacts){
                contact.MailingStreet=account.BillingStreet;
                contacts.add(contact);
                recordsp = recordsp+1;
            }
        }
        update contacts;
    }
    global void finish(database.BatchableContext bc){
        system.debug(recordsp + 'Records Processed. Batch Apex Successs');
        AsyncApexJob job = [select id, Status, numberoferrors,
                           JobItemsprocessed,
                           TotalJobItems,
                           createdBy.Email
                           from AsyncApexJob
                           where id = :bc.getJobId()];
        system.debug('Batch Job Apex Success');
    }
}
public class PropertyUtility {
    public static void  newListedProperties(){
        string propEmail;
        list<Property__c> newPropList = [select name,
                                     Broker__r.Email__c,
                                     Days_On_Market__c from 
                                     Property__c
                                     where Days_On_Market__c <= 30];
        for (Property__c ListofProp : newPropList){
            propEmail = ListofProp.Name + ':' + ListOfProp.Broker__r.Email__c;
        }
        system.debug('Property Email'+propEmail);
    }
}
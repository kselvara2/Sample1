trigger AccountAddressTrigger on Account (before insert,before update) {
for(Account ac : Trigger.new){
        If (ac.Match_Billing_Address__c == true && ac.BillingPostalCode!=Null) {
            ac.ShippingPostalCode = ac.BillingPostalCode;
        }   
    }
}
trigger MatchAccountAddress on Account (before insert,before update) {
for (Account MatchAddress : Trigger.New) {
if (MatchAddress.Match_Billing_Address__c == true) {
MatchAddress.BillingAddressValue__c='xyz';
}
}
}
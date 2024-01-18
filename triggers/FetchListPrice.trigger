trigger FetchListPrice on OpportunityLineItem (before insert) {
    for (OpportunityLineItem oli : Trigger.new){
        
        list<PricebookEntry> priceBookEntry = [select unitprice from PricebookEntry];
    }
}
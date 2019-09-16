public with sharing class JiraController {
@AuraEnabled
    public static List<ContactToTask> takeData(){
    List<AggregateResult> pList = new List<AggregateResult>();
    List<ContactToTask> result = new List<ContactToTask>();

    pList = [SELECT Contact__r.Name, SUM(MoneyWithBonus__c), SUM(MoneyWithTax__c), SUM(JustBonusMoney__c), SUM(Hours__c)
    FROM ContactToTask__c
    WHERE Contact__r.RatePerHours__c > 0
    GROUP BY Contact__R.Name];

    for(AggregateResult ar: pList){
        result.add(new ContactToTask());
    }
    return result;
}
}

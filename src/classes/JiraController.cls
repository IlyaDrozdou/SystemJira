public with sharing class JiraController {
@AuraEnabled
    public static List<AggregateResult> takeData(){
    List<AggregateResult> pList = new List<AggregateResult>();
    pList = [SELECT Contact__r.Name, Contact__r.Id, SUM(MoneyWithBonus__c)MWB, SUM(MoneyWithTax__c)MWT, SUM(JustBonusMoney__c)JBM, SUM(Hours__c)Hours
    FROM ContactToTask__c
    WHERE Contact__r.RatePerHours__c > 0
    GROUP BY Contact__r.Name, Contact__r.Id
    ORDER BY Contact__r.Name ASC NULLS LAST];
    return pList;
}

@AuraEnabled
    public static List<AggregateResult> takeNewData(String id){
    List<AggregateResult> listt = new List<AggregateResult>();
    listt = [SELECT Contact__r.Name, SUM(HoursWithoutBonus__c)HWOB, MAX(Contact__r.RatePerHours__c)RPH, SUM(HoursWithBonus__c)HWB, SUM(AmountTax__c)TAX
    FROM ContactToTask__c
    WHERE Contact__r.Id = :id
    GROUP BY Contact__r.Name];
    System.debug(listt);
    return listt;


}
}
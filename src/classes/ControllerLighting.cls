public with sharing class ControllerLighting {
@AuraEnabled
    public static List<Account> getAccountList(){
    List<Account> AccList = [SELECT Id, Name FROM Account];
    return AccList;
}
}
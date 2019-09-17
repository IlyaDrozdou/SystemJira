/**
 * Created by user on 03-Sep-19.
 */

public with sharing class MyContr {
    private List<Opportunity> acct;

    public List<Opportunity> Getacct(){
        acct =[SELECT Id, IsPrivate, StageName FROM Opportunity LIMIT 20];
        return acct;
    }


}
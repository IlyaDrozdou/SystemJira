/**
 * Created by user on 02-Sep-19.
 */

public with sharing class SelectOpp {
    public static String opportunityInJson(){
        System.debug(JSON.serialize([SELECT Id, StageName FROM Opportunity WHERE StageName ='CLosed Won']));
        String js = JSON.serialize([SELECT Id, StageName FROM Opportunity WHERE StageName ='CLosed Won']);
        return js;
    }

}
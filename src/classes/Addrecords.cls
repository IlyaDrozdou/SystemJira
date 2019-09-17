/**
 * Created by user on 28-Aug-19.
 */

public with sharing class Addrecords {

    public static void createNewDoctors() {
        List<Doctor__c> doc = new List<Doctor__c>{
                new Doctor__c(Name = 'Joe', Title__c = 'Dantist'),
                new Doctor__c(Name = 'Kathy', Title__c = 'Dantist'),
                new Doctor__c(Name = 'Caroline', Title__c = 'Dantist'),
                new Doctor__c(Name = 'Kim', Title__c = 'Dantist')
        };
        insert doc;
    }
}
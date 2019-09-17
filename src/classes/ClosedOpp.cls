/**
 * Created by user on 30-Aug-19.
 */

public with sharing class ClosedOpp {
   public static void closingopp(List<Opportunity> opp){
       List<Task> listTasksToInsert= new List<Task>();
       for (Opportunity o : opp) {
           if (o.StageName == 'Closed won') {
               Task t = new Task();
               t.Subject = 'Follow Up Test Task';
               t.WhatId = o.Id;
               listTasksToInsert.add(t);


           }

       }
       if (listTasksToInsert.size() > 0){
           insert listTasksToInsert;
       }
   }

}
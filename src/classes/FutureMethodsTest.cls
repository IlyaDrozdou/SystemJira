/**
 * Created by user on 06-Sep-19.
 */

public with sharing class FutureMethodsTest {
    @Future
    public static void futureMethod(){
    Account acct = [SELECT Id, Name FROM Account WHERE Name='Trigger test1'];
        acct.Name = 'Test123';
             update acct;
    }

}
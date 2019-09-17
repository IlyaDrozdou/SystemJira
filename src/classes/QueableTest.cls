/**
 * Created by user on 06-Sep-19.
 */

@IsTest
private class QueableTest {
    @IsTest
    static void test1() {
        Test.startTest();

        System.enqueueJob(new KakHotite());
        Test.stopTest();
        Account acct = [SELECT Id, Name FROM Account WHERE Name='Trigger test1' LIMIT 1];
        System.assertEquals('Trigger test1', acct.Name);
    }
}
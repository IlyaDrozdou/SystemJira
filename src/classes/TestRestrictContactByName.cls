/**
 * Created by user on 01-Sep-19.
 */

@IsTest
private class TestRestrictContactByName {
    @IsTest
    static void testBehavior() {
        Contact con = new Contact(LastName = 'INVALIDNAME');
            Test.startTest();
        try {
            insert con;
        }
        catch(Exception e){ 
            Test.stopTest();
        }

    }
}
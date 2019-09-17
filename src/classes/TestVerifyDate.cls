/**
 * Created by user on 31-Aug-19.
 */

@IsTest
private class TestVerifyDate {
    @IsTest
    static void testBehavior() {
        Date date1 = date.today();
        Date date2 = date1.addDays(29);
        Date day = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2, day);
    }
    @IsTest
    static void testBehavior2() {
        Date date1 = date.today();
        Date date2 = date1.addDays(31);
        Date day = VerifyDate.CheckDates(date1, date2);
        System.assertNotEquals(date2, day);
    }
}
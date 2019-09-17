/**
 * Created by user on 01-Sep-19.
 */

trigger ContactCount on Contact (after insert, after update, after delete) {
    ContactCountClass.statusCount(Trigger.new);

}
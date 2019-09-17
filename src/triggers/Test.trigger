/**
 * Created by user on 29-Aug-19.
 */

trigger Test on Account (before insert) {
    for(Account a : Trigger.New) {
            a.Description = 'New description';
}
}
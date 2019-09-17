/**
 * Created by user on 29-Aug-19.
 */

trigger HelloWorldTrigger on Account (before insert) {
    System.debug('Hello Anatoliy');

}
/**
 * Created by user on 30-Aug-19.
 */

trigger AccountAddressTrigger on Account (before insert, before update) {
AccountAddressChange.shippingAsBilling(Trigger.New);
}
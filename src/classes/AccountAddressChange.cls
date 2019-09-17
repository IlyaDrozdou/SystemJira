/**
 * Created by user on 30-Aug-19.
 */

public with sharing class AccountAddressChange {
    public static void shippingAsBilling(List<Account> accounts){
        for(Account a : accounts){
            if (a.BillingPostalCode != null && a.Match_Billing_Address__c == true) {
                a.ShippingPostalCode = a.BillingPostalCode;


            }
        }
    }
}
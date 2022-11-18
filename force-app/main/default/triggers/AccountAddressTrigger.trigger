trigger AccountAddressTrigger on Account (before insert, before update) {
    
    for(account a : trigger.new){
        system.debug('account:'+a);
        if(a.Match_Billing_Address__c == True && a.BillingPostalCode <> null){
            a.ShippingPostalCode = a.BillingPostalCode;
            system.debug('a');
        }
    }

}
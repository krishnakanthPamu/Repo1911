global class WebserviceFindCityAccount {
    
    webservice static string findMethod (string Name, String City){
        system.debug('Testing Flow1--->');
        account acct = new account(name= name, billingCity=city);
        system.debug('Testing Flow1--->');
        insert acct;
        if(acct.id<>null)
            return 'Success';
        else
            return 'Fail';
            
    }
}
@RestResource(urlMapping='/v1/getAccounts/*')
//Without wrapper class
/*
global with sharing class FetchAccount {
@HttpGet
global static list<account> fetchAccount(){
RestRequest req = RestContext.request;
RestResponse res = Restcontext.response;
List<account> listAccount =[Select Id, Name, BillingState, Website, Phone, Industry, Type from Account LIMIT 10 ];
return listAccount ;
}
}
*/

//with wrapper class
global with sharing class FetchAccount {
    @HttpGet
    global static string  fetchAccount(){
        list<Accountwrapper> lstWrapper = new list<Accountwrapper>();
        RestRequest req = RestContext.request;
        RestResponse res = Restcontext.response;
        List<account> listAccount =[Select Id, Name, AccountNumber, Phone, Website, Type, Industry  from Account LIMIT 10 ];
        for(account objAccount:listAccount){
            Accountwrapper accWrap = new Accountwrapper();
            accWrap.objAccount = objAccount;
            lstWrapper.add(accWrap);
        }
        
       
        return JSON.serialize(lstWrapper);
    }
    
    global class Accountwrapper {

        public string message;
        public account objAccount;
		public string buttonName{get;set;}
        public AccountWrapper(){
        	objAccount = new account();
            buttonName = 'Update';
        }
    } 
}
@RestResource(urlMapping='/v1/Accounts/*')

global with sharing class RESTAccountServiceV4 {
    
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
        
       
        return Json.serialize(lstWrapper);
    }
    
    @HttpPost
    //global static Accountwrapper doPost(Accountwrapper response) {
    //global static Accountwrapper doPost(string wrappedRecordsJSONstring) {
    global static string doPost() {
        
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
             
		//Accountwrapper response = (Accountwrapper)JSON.deserialize(wrappedRecordsJSONstring, Accountwrapper.class);
		
        list<Accountwrapper> response = (list<Accountwrapper>)JSON.deserialize(RestContext.request.requestBody.tostring(), list<Accountwrapper>.class);
        
        list<Account> lstAccount = new list<Account>();
        for(Accountwrapper acct:response){
        	lstAccount.add(acct.objAccount);    
        }
        system.debug('<<<<lstAccount>>>>'+lstAccount);
        upsert lstAccount;
		return 'Accounts are updated successfully';
        
    }
    
    global class Accountwrapper {

        public string message;
        public account objAccount;

        public AccountWrapper(){
        	objAccount = new account();    
        }
    } 
    
}
@RestResource(urlMapping='/v1/Accounts2/*')

global with sharing class RESTAccountServiceV41 {
    
    @HttpGet
    global static Accountwrapper  fetchAccount(){
        RestRequest req = RestContext.request;
        RestResponse res = Restcontext.response;
        List<account> listAccount =[Select Id, Name, AccountNumber, Phone, Website, Type, Industry  from Account where name like 'b%' ];
        
        Accountwrapper accWrap = new Accountwrapper();
        if(listAccount!= null){
           accWrap.lstAccount = listAccount;
        }
        return accWrap;
    }
    
    @HttpPost
    //global static Accountwrapper doPost(Accountwrapper response) {
    //global static Accountwrapper doPost(string wrappedRecordsJSONstring) {
    global static Accountwrapper doPost() {
  
		//Accountwrapper response = (Accountwrapper)JSON.deserialize(wrappedRecordsJSONstring, Accountwrapper.class);
		
        Accountwrapper response = (Accountwrapper)JSON.deserialize(RestContext.request.requestBody.tostring(), Accountwrapper.class);
        
        List<Account> accList = response.lstAccount;
        upsert accList;
        List<account> listAccount =[Select Id, Name, AccountNumber, Phone, Website, Type, Industry  from Account where name like 'b%' ];
        response.lstAccount =listAccount;
        system.debug('test-'+listAccount);
		//response.message = 'Accounts are updated successfully'; 
         system.debug('response-'+response);
        return response;
        
    }
    
    global class Accountwrapper {

        public string message{set;get;}
        public List<account> lstAccount{get;set;}

        public AccountWrapper(){
            lstAccount = new List<Account>();
        }
    } 
    
}
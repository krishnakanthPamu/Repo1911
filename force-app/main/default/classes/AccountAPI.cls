//@RestResource(urlMapping='/Account/*')
@RestResource(urlMapping='/v1/Accounts1/*')
global with sharing class AccountAPI {
     
   @HttpDelete
    global static void doDelete() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account = [SELECT Id FROM Account WHERE Id = :accountId];
        delete account;
    }
   
    @HttpGet
    global static accountWrapperClass doGet() {
      //  return 'from kpamu';
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        list<Account> result = [SELECT Id, Name, Phone, Website FROM Account];
        accountWrapperClass acctWrap = new accountWrapperClass();
        if(!result.isempty()){
            acctWrap.acctsList = result;
            acctWrap.message = 'Success';
        }
        return acctWrap;
    
	}
   
    @HttpPost
    global static String doPost(String name, String phone, String website) {
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
        account.website = website;
        insert account;
        return account.Id;
    }
    
    global class accountWrapperClass{
        list<account> acctsList{set;get;}
        string message;
        
        public accountWrapperClass(){
            acctsList = new list<account>();
            message = null;
        }
    }
 
}
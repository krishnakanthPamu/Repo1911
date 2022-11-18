@restResource(urlmapping='/v1/AccountsMangament/')
global class AccountManager {
    
    @httpGet
    global static account getAccount(){
        account a = new account();
        map<string, string> paramsMap = restContext.request.Params;
        id aid = paramsMap.get('id');
        a = [select name from account where id = :aid];
        return a;
    }
    
    @httpDelete
    global static string deleteAccount(){
        account a = new account();
        map<string, string> paramsMap = restContext.request.Params;
        id aid = paramsMap.get('id');
        a = [select id from account where id = :aid];
        delete a;
        return 'Record Deleted';
    }
    
    @httpPost
    global static account createAccount(string name){
        account a = new account(name=name);
    
        insert a;
        return a;
    }
    
    @httpPatch
    global static account updateAccount(string name){
        account a = new account(name =name);
        //map<string, string> paramsMap = restContext.request.Params;
        
       	//	a.name = name;
        upsert a;
        return a;
        
    }

}
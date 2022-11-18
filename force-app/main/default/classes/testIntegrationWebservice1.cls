@RestResource(urlMapping='/v1/Accounts3/*')
global class testIntegrationWebservice1 {
    
@HttpGet
    global static wrapperClass getMethod1() {
        RestRequest request = RestContext.request;
        String temp = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        system.debug('temp>>>> ' + temp);
        // grab the caseId from the end of the URL
        system.debug('in Source: Oracle');
		wrapperClass wc = new wrapperClass();
        list<account>  acctsList = [SELECT Id, Name FROM Account LIMIT 10];
		wc.objAccount = acctsList;
        wc.Status = 'Success';
        return wc;
    }
    
    global class wrapperClass{
        public list<account> objAccount{get;set;}
        public string status{get;set;}
        
    }
}
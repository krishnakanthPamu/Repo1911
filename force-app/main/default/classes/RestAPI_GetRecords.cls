@RestResource(urlMapping='/Accounts/*')
global with sharing class RestAPI_GetRecords {
    @HttpGet
    global static list<Account> getCaseById() {
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String caseId = request.requestURI.substring(
            request.requestURI.lastIndexOf('/')+1);
        list<Account> result =  [SELECT id, name
                        FROM Account
                        LIMIT 5];
        return result;
    }
}
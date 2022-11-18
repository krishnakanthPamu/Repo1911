@RestResource(urlMapping='/cases/*')
global with sharing class CaseManager {
	@httpGet
    global static case getCaseById(){
        RestRequest request = RestContext.request;
        String caseId = request.requestURI.Substring(request.requestURI.lastIndexOf('/')+1);
        case result = [SELECT caseNumber, Subject, Status, Origin, Priority
                       FROM Case
                       WHERE Id = :caseId];
        
        return result;
    }
    
    @HttpPost
    global static ID CreateCase(String Subject, String Status, String Origin, String Priority){
        case thisCase = new case(Subject=subject,
            					 Status=status,
            					 Origin=origin,
            					 Priority=priority);
        insert thisCase;
        return thisCase.Id;
    }
    
    @HttpPut
    global static ID upsertCase(String ID, String Subject, String Status, String Origin, String Priority){
        
        case thiscase = new case(
            					 Id=ID,
            					 Subject=subject,
            					 Status=status,
            					 Origin=origin,
            					 Priority=priority);
        upsert thisCase;
        return thisCase.Id;
        
        
    }
    
    @HttpPatch
	global static ID updateCaseFields() {
	    RestRequest request = RestContext.request;
	    String caseId = request.requestURI.substring(
        	request.requestURI.lastIndexOf('/')+1);
    	Case thisCase = [SELECT Id FROM Case WHERE Id = :caseId];
    	// Deserialize the JSON string into name-value pairs
    	Map<String, Object> params = (Map<String, Object>)JSON.deserializeUntyped(request.requestbody.tostring());
    	// Iterate through each parameter field and value
    	for(String fieldName : params.keySet()) {
    	    // Set the field and value on the Case sObject
     	   thisCase.put(fieldName, params.get(fieldName));
    	}
    	update thisCase;
    	return thisCase.Id;
	}
}
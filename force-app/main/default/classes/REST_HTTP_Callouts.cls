public class REST_HTTP_Callouts{
    
    public static httpResponse getRequest(){
        
        http httpcall = new http();
        
        HttpRequest request1 = new HttpRequest();

        request1.setMethod('GET');
        request1.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        
        httpResponse response1 = httpcall.send(request1);

        //system.debug(response1); //only access to the variables
        //system.debug(response1.getBody()); // will access the method in HTTPResponse 
        
        if(response1.getStatusCode() == 200){
            //deserializedJsonString
            //system.debug(JSON.deserializeUntyped(response1.getBody()));
            Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response1.getBody());
            
       		list<Object> animals = (list<object>) result.get('animals');
            system.debug('From getRequest Method:');
            
            for(Object animal: animals){
                system.debug(animal);
            }
            
        }
          return response1;
    }
    public static httpResponse postRequest(){
        
        http httpCall = new http();
        
        HttpRequest req1 = new HttpRequest();
        req1.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req1.setMethod('POST');
        req1.setHeader('Content-Type', 'application/json;charset=UTF-8');
        req1.setBody('{"name":"mighty mouse"}');
        
        HttpResponse res1 = httpcall.send(Req1);
        
         
        if (res1.getStatusCode() != 201){
            system.debug('The status code was not at expected: ' + res1.getStatusCode() + ' ' + ' getStatus: ' + res1.getStatus());
        }
        else{
            map<String, Object> AnimalsMap = (map<String, Object>) JSON.deserializeUntyped(res1.getBody());
            list<Object> ListOfAnimals = (list<Object>) AnimalsMap.get('animals');
            system.debug('From postRequest Method: ');
            for(object animal: ListOfAnimals){
                system.debug(animal);
                
            }
            //system.debug('\n');
        }
        return res1;
    }
	
}
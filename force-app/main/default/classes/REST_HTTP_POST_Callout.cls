public class REST_HTTP_POST_Callout {
    
    public static void PostRequest(){
        
        http httpCall = new http();
        
        HttpRequest req1 = new HttpRequest();
        req1.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        req1.setMethod('POST');
        req1.setHeader('Content-Type', 'application/json;charset=UTF-8');
        req1.setBody('{"name":"mighty mouse"}');
        
        HttpResponse res1 = httpcall.send(Req1);
        
        if (res1.getStatusCode() != 201){
            system.debug('The status code was not at expected: ' + res1.getStatusCode() + ' ' + res1.getStatus());
        }
        else{
            system.debug(res1.getBody());
            map<String, Object> AnimalsMap = (map<String, Object>) JSON.deserializeUntyped(res1.getBody());
            
            list<Object> ListOfAnimals = (list<Object>) AnimalsMap.get('animals');
            
            for(object animal: ListOfAnimals){
                system.debug(animal);
                
            }
        }
    }

}
public class AnimalLocator {
    
    public static string getAnimalNameById (Integer Id) {
        
        string animalName;
        
        http httpcall = new http();
        httpRequest request1 = new httpRequest();
        
        request1.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        request1.setMethod('GET');
        
        httpResponse res1 = httpcall.send(request1);
        
        if(res1.getStatusCode() == 200){
        	Map<String, Object> MapOfAnimals = (Map<String, Object>) JSON.deserializeUntyped(res1.getBody());
            Map<string, Object> a = (map<string, object>) MapOfAnimals.get('animal');
        	animalName= (string)a.get('name');

            system.debug('jsonstring'+res1.getBody());
        	system.debug('converted jsonstring map: '+ MapOfAnimals);
        	system.debug('getting one record from the map: '+MapOfAnimals.get('animal'));
        	system.debug('getting name from that map: '+a.get('name'));
        }
        return animalName;
        

    }

}
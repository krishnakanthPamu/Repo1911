public class BeerSearchAuraService {
    @auraEnabled
    public static list<beer__c> getBeerList (string searchText){
        system.debug('search key: '+ searchText);
        string likeTerm = '%' + searchText + '%' ;
        list<SObject> beerList;
        
        if(string.isNotEmpty(searchText) || string.isNotBlank(searchText)){
            string query = 'SELECT ID, Name FROM beer__c WHERE Name LIKE :likeTerm LIMIT 10';
            beerList = database.query(query);
            system.debug('beers: '+ beerList);
        }
        return beerList;
    }
    
}
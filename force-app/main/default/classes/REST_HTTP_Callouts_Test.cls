@isTest
public class REST_HTTP_Callouts_Test {

    @isTest
    public static void testGetRequest(){
        //a. Create a static Resource with JSON String.
        //b. Setting mock Response
        staticResourceCalloutMock mock = new staticResourceCalloutMock();
        mock.setStaticResource('GetAnimalResource');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        
        //c. Associating this class as mock callout
        test.setMock(HttpCalloutMock.class, mock);
        
        //d. getCallout
        httpResponse res1 = REST_HTTP_Callouts.getRequest();
        
        //e. checking the Response
        system.assertNotEquals(null, res1, 'Mock Response is null');
        system.assertEquals(200, res1.getStatusCode(), 'Mock get response status code is not equal to 200');
        system.assertEquals('application/json;charset=UTF-8', res1.getHeader('Content-Type'), 'The content type value is not expected.');
        
        Map<string, object> MapOfAnimals = (Map<String, Object>) JSON.deserializeUntyped(res1.getBody());
        List<Object> animals = (List<Object>) MapofAnimals.get('animals');
        System.assertEquals(3, animals.size() , 'The array should only contain 3 items.');
        
    }
    
    @isTest
    public static void testPostRequest(){
        
        //a. Create a testClass which implements HTTPCalloutMock
        
        //b. Associate this testMethod with interface i.e., TestClass or method informs runtime that this class/method uses "Mock" Callouts
        test.setMock(HttpCalloutMock.Class, new REST_HTTP_POST_Test_Implements_Interface());
        
        //c. send request
        httpResponse res1 = REST_HTTP_Callouts.postRequest();
		
        //d. Verify the results/ response.
        system.assert(res1.getHeader('Content-Type') == 'application/json' , 'header not matching');
        system.assertEquals(201, res1.getStatusCode(), 'Status Code is not equal to 201') ;
        system.assertEquals('{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}',
                            res1.getBody(),
                            'body not matching');
        
        
    }
}
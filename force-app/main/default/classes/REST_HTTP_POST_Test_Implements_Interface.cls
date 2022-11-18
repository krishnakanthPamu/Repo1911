@isTest
global class REST_HTTP_POST_Test_Implements_Interface implements HttpCalloutMock{
  
    global  static httpResponse respond(httpRequest req1){
        
        httpResponse res1 = new httpResponse();
        
        res1.setHeader('Content-Type', 'application/json');
        res1.setStatusCode(201);
        res1.setBody('{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}');
        
        return res1;
    }
}
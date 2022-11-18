@isTest
public class Test_REST_HTTP_POST_Response{
    
    @isTest
    public static void function1(){
        
        test.setMock(HttpCalloutMock.Class, new Test_REST_HTTP_POST_Implements_Interface());
        httpResponse res1 = REST_HTTP_Callouts.postRequest();

        system.assert(res1.getHeader('Content-Type') == 'application/json' , 'header not matching');
        system.assertEquals(200, res1.getStatusCode(), 'Status Code is not equal to 200') ;
        system.assertEquals('{"animals": ["majestic badger", "fluffy bunny", "scary bear", "chicken", "mighty moose"]}',res1.getBody(),
                            'body not matching');
        
        
    }

}
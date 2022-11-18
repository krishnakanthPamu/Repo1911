global class AnimalLocatorMock implements httpCalloutMock {

    global static httpresponse respond(httpRequest req1){
        
        httpResponse res1=new HttpResponse();
        res1.setBody('{"animal":{"id":2,"name":"bear","eats":"berries, campers, adam seligman","says":"yum yum"}}');
        res1.setStatusCode(200);
        
        return res1;
    }
}
global class ParkServiceMock implements WebserviceMock {
    
    global void doInvoke(
    					 Object stub,
        				 Object request,
        				 Map<String,Object> response,
        				 String endPoint,
        				 String soapAction,
        				 String requestName,
        				 String responseNS,
        				 String responseName,
        				 String responseType){
                      
            ParkService.byCountryResponse res1 = new parkService.byCountryResponse();
            res1.return_x=new string[]{'Anamudi Shola National Park', 'Anshi National Park', 'Bandipur National Park'};
			//map<string, Object> ma = (map<string, Object>) res1.return_x;
            response.put('response_x', res1);
                             
                             
                      
        
    }
    

}
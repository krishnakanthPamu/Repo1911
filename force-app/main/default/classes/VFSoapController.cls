public with sharing class VFSoapController {
    
    public static string nameVar {set;get;}
    public static string cityVar {set;get;}
    
    public static string statusMsg  {set;get;}
    
    public static list<account> aList{set; get;}
    
    public VFSoapController (){
        aList=null;
        statusMsg=' ';
    }
    
    
    public static void makeSOAPCall(){
    
        //Step1 : Make connection
        partnerSoapSforceCom.soap Instance1 = new partnerSoapSforceCom.soap();
        partnerSoapSforceCom.LoginResult parnerResult = Instance1.login('krishnakanth.pamu@gmail.com','July20201@FukOsiFm8AvGP6CE9QunB0BC');
        system.debug('Krishnakanth ParnerResult----> '+ parnerResult );
        system.debug('Krishnakanth ParnerResult.sessionId----> '+ parnerResult.sessionId );
                
        
        //Step 2: Assign 'Session Id' to a variable present 'Session Header' Class.
        string sessionId1 = parnerResult.sessionId;
        soapSforceComSchemasClassWebservice.SessionHeader_element sessionHeader1 = new soapSforceComSchemasClassWebservice.SessionHeader_element();
        sessionHeader1.sessionId = sessionId1 ;
        
        
        //Step 3: Pass the parameters Name, City
        soapSforceComSchemasClassWebservice.WebserviceFindCityAccount objA1 = new soapSforceComSchemasClassWebservice.WebserviceFindCityAccount();
        objA1.sessionHeader = sessionHeader1 ;
        string result = objA1.findMethod(nameVar, cityVar);
        system.debug('result--->'+ result);
    
        if (result=='Success')
        {
           account a = new account(name=nameVar, billingCity=cityVAr);
           insert a;
           
           statusMsg = 'Record created successfully...';
        }
    }
}
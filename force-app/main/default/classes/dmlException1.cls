public class dmlException1 {
    public static void f1(){ 
        String inputLastName = 'INVALIDNAME';
            Contact newContact = new Contact(LastName= inputLastName);	    
			
			try{
                insert newContact;
            }
            catch (DmlException dmlEx) {
                
                // Verify (Assert)
                // In this case the insert should have been stopped by the trigger,
                // so we need to verify that we got a dml exception (and specifically that we got the error message
                // that we were expecting).
                String expectedMessage = 'The Last Name "'+ newContact.LastName+'" is not allowed for DML';
                System.assertEquals(expectedMessage, dmlEx.getDmlMessage(0));
			}
    }
}
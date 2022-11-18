@isTest
public class deleteTest {
    @isTest
    public static void delteMethod(){
        account a = new account();
        a.Name= 'Account shrey';
        insert a;
        
        opportunity o = new opportunity();
        o.name = 'shrey oppty';
        o.closeDate = system.today() + 40;
		o.stageName = 'Prospecting'; 
        account b = [select id from account where name = 'Account shrey'];
        o.AccountId = b.Id;
        insert o;
        /*
        //Error Catching using DATABASE METHODS
        test.startTest();
        database.DeleteResult dResult = database.delete(b.id, False);
        test.stopTest();
                
        system.assertEquals('Error from APEX Class: it has child records, You cannot delete this record...',
                            dResult.getErrors()[0].getMessage());
        */
        
        //Using Data Exceptions: 
        test.startTest();
        try{
            delete b;
        }
        catch(dmlException e){
            system.assertEquals('Error from APEX Class: it has child records, You cannot delete this record...', e.getDmlMessage(0) );
        }
		test.stopTest();
        
    }

}
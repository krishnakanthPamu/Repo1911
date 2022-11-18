public class UpdatingRelatedRecords {
    
    Public static void Function1(){
	    Contact a = [SELECT Name, Phone, Account.Name, Account.Type FROM Contact
                						WHERE Name = 'Apex Created From' AND Account.Name = 'Get Cloudy'];
        System.debug('Contact: '+ a);
        System.debug('Account: '+ a.Account);
        
        
        System.debug('Before Update contact Phone: '+ a.Phone);
        System.debug('Before Update Account Type: '+ a.Account.Type);
        
        //Update Contact Field
        a.Phone = '1234567890';
        Update a;
        
        //Update Related Account Field
        a.Account.Type = 'asd';
        Update a.Account;
        
        System.debug('After Update contact Phone: '+ a.Phone);
        System.debug('After Update Account Type: '+ a.Account.Type);
    }
    
}
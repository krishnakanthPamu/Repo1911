public class TestMixedDmlError {
    
    public static void function1(){
        Indeed_com_AppForm__c i;
    	User u = [select id, name, CompanyName from user where name='Krishnakanth Pamu'];       
    	if(u.CompanyName == null){
        	u.CompanyName = u.Name + ' ' + 'Company';
        	i = new Indeed_com_AppForm__c();
        	i.Name = 'Created from TestMixedDmlError Apex Class';
            insert i;
            update u;
    	}
        system.debug(u.CompanyName);
        system.debug(i.name);
          
    }
    
 

}
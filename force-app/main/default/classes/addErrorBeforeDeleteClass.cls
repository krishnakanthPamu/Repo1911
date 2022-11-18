public class addErrorBeforeDeleteClass {
	public static void f1(list<account> accts, map<id, account> maccts){
		
        list<account> newAccts = [select id, name, (select id from opportunities) from account where id in: maccts.keyset()];
		integer i=0;
		for(account a: newAccts){
            //system.debug(a.opportunities.size());
			if(a.opportunities.size() <> 0)
			{
				account m = maccts.get(a.id);
                    m.addError('Error from APEX Class: it has child records, You cannot delete this record...');
                //a.addError('It has child records...'); // does not work, to add the error, total record should be in context variable.
				system.debug('has child records'+a); //gives only id, name
                system.debug('has child records'+m); //gives entire record so use trigger context variable.
			}
 		}
		/*
        for(account a: accts){
            a.addError('sample error');
        }
       */ 
		
	}
}
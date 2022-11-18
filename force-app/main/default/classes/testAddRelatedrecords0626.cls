public class testAddRelatedrecords0626 {
    
    public static void addrecords(){
        
        list<account> list1 = [SELECT id, name from account 
                                               where id not in (select accountid from opportunity)];
        system.debug(list1);
        
        list<contact> list2 = new list<contact>();
        List<Opportunity> OList = New List<Opportunity> ();
        
        for(account a: list1){
            Opportunity Opty = New Opportunity();
                Opty.Name = a.Name + ' Opportunity 1';
                Opty.StageName = 'Custom Stage added by APEX';
                Opty.CloseDate = System.today().addMonths(1);
                Opty.AccountId = a.Id; 
                OList.add(Opty);            
            /*//while adding contacts, getting error but with opportunities it is working fine...
            contact c = new contact();
            c.FirstName = a.Name;
            c.LastName = ' Contact';
            c.accountid = a.id;
            
          	list2.add(c);
*/
        }
        system.debug('list2' + list2);
        	//database.SaveResult[] srResult = database.insert(list2, true);
        	 Insert OList;
    }

}
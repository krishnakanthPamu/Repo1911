public class TestAddRelatedRecord {


	public static void UsingList(){
		List<Account> acctsWithOpps = new List<Account>([SELECT Id,Name, (Select Id, Name From Opportunities) FROM Account
                                                         						WHERE Name = 'Test Account 1'] );
        integer i =0;
		
        List<Opportunity> OList = New List<Opportunity> ();
		for(Account a : acctsWithOpps) {
            
            if(acctsWithOpps.get(i).Opportunities.size()==0)	{
				Opportunity Opty = New Opportunity();
                Opty.Name = a.Name + ' Opportunity 1';
                Opty.StageName = 'Custom Stage added by APEX';
                Opty.CloseDate = System.today().addMonths(1);
                Opty.AccountId = a.Id; 
                
                OList.add(Opty);
            }
            i = i+1;
	    }
        Insert OList;
    }

    public static void UsingMap(){
        List<Account> AList = new List<Account>([SELECT Id,Name FROM Account WHERE Name ='Test Account 1']);
                                                 //ORDER BY Id DESC LIMIT 5] );
        Map<Id,Account> AMap = new Map<Id,Account>([SELECT Id,Name, (select id,Name from Opportunities) FROM Account 
                                                             		 					WHERE Id IN :AList ORDER BY Id DESC LIMIT 5] );
        
        List<Opportunity> OList = New List<Opportunity>();

        for(Account a : AList) {
            if(AMap.get(a.Id).Opportunities.size()==0)	{
                System.debug('Account without Opportunity: '+a);
				Opportunity opty = New Opportunity(Name = a.Name + ' Opportunity1',
                                                   accountid = a.id, 
                                                   StageName = 'Prospecting', 
                                                   CloseDate= System.today().addMonths(1)
                                                   );// REQUIRED FIELDS: StageName, CloseDate]: [StageName, CloseDate]
                

                OList.add(opty);
            }
		}
        Insert OList;
    }
  
}
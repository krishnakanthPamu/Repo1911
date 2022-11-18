public class FutureMethodClass {
    
    @Future
    public static void futuremethod (set<Id> setOfIds){
		list<account> aList = [SELECT Id, Name FROM Account WHERE Id IN :setOfIds ];
	
        list<account> updatedList = new list<account>();
		for(account a: aList){
			a.Name = 'Modified using Future Method';
            updatedList.add(a);
		}
        
        if(updatedList.size()>0)
            update updatedList;
    }
}
public class checkParentExist {
    
    public static void method1(list<contact> newContList){
        set<string> descriptionFields = new set<string>();
        
        for(contact cont1 : newContList){
        	descriptionFields.add(cont1.Description);
        }
        system.debug('set of descriptions: '+ descriptionFields);
        
        map<string, account> mapsList = new map<string, account>();
        for(account acct : [select id, name from account where name in : descriptionFields]){
            mapsList.put(acct.name, acct);
        }
        system.debug('all Accounts: ' + mapsList.size());
        
        for(contact cont : newContList){
            if(mapsList.containskey(cont.Description)){
                cont.accountId = mapsList.get(cont.Description).Id;
                system.debug('hiiiiiiiii');
            }
            else{
                //cont.AccountId = ' ';
            }
        }
/*        
        set<id> accountIdSet = new set<id>();
        for(account acct : [select id, name from account]){
            accountIdSet.add(acct.id);
        }
        system.debug('accountIdSet: ' + accountIdSet);
        
        for(contact c : newContList){
            system.debug('c.accountid:  ' + c.accountid);

            if(accountIdSet.contains(c.accountId)){
              system.debug('already account created... so you can attach here');  
            }
            else{
                system.debug('no account created...');
            }
        }
*/        
    }
}
public class FetchAccounts {
    @auraEnabled
    public static accountWrapperClass getAccounts(){
        list<account> acctsList1;
        accountWrapperClass acctWrapper = new accountWrapperClass();
        
        integer filterDataSize = [SELECT Id, Name, User_ID__c, Filed_Name__c, Field_Condition__c, Field_Value__c FROM Account_Filter_Data__c
                                  WHERE User_ID__c = :UserInfo.getUserId()].size();
        
        if(filterDataSize == 0){
            system.debug('in if');
            acctWrapper.acctsList = [SELECT Id, Name FROM Account];
            for(account acct: acctWrapper.acctsList){
                system.debug('Krishnakanth - acct: '+ acct);
            }
        }else{
            system.debug('in else');
            Account_Filter_Data__c filterData = [SELECT Id, Name, User_ID__c, Filed_Name__c, Field_Condition__c, Field_Value__c FROM Account_Filter_Data__c
                                                 WHERE User_ID__c = :UserInfo.getUserId()];
            

            acctWrapper = filteredAccountsMethod(filterData.Filed_Name__c, filterData.Field_Condition__c, filterData.Field_Value__c);
            //acctWrapper.showFilterBlock = true;
            //acctWrapper.fieldName = filterData.Filed_Name__c;
            //acctWrapper.filterCondition = filterData.Field_Condition__c;
            //acctWrapper.inputValue = filterData.Field_Value__c;	
            system.debug('hiiiiiiiiii   '+ acctWrapper.fieldName);
            system.debug('hiiiiiiiiii   '+ acctWrapper.filterCondition);
            system.debug('hiiiiiiiiii   '+ acctWrapper.inputValue);
        }
        
        return acctWrapper;
        
    }
    
    @auraEnabled
    public static accountWrapperClass filteredAccountsMethod(string fieldName, string condition, string inputValue){
        
        accountWrapperClass acctWrapperFiltered = new accountWrapperClass();
        string myQuery;
        
        //dynamic Query
        myQuery='SELECT Id, Name FROM Account';
        system.debug('in filter method');
        
        if(condition=='Equal to'){
            system.debug('in equal to if');
            myQuery = 'SELECT Id, Name FROM Account WHERE '+ fieldName + '=' + '\'' + inputValue + '\'';
            
            saveFilterDataMethod(fieldName, condition, inputValue);
            
        }else if(condition=='Not Equal to'){
            system.debug('in not equal to if ');
            myQuery = 'SELECT Id, Name FROM Account WHERE '+ fieldName + '<>' + '\'' + inputValue + '\'';
            
            saveFilterDataMethod(fieldName, condition, inputValue);
            
        }else if(condition=='Contains'){
            system.debug('in contain if');
            myQuery = 'SELECT Id, Name FROM Account WHERE '+ fieldName + ' LIKE ' + '\'%' + inputValue + '%\'';
            system.debug('contain query;' + myQuery);
            
            saveFilterDataMethod(fieldName, condition, inputValue);
            
        }
        
        acctWrapperFiltered.acctsList = database.query(myQuery);
        acctWrapperFiltered.showFilterBlock = true;
        acctWrapperFiltered.fieldName = fieldName;
        acctWrapperFiltered.filterCondition = condition;
        acctWrapperFiltered.inputValue = inputValue;	
        return acctWrapperFiltered;
    }
    
    public static void saveFilterDataMethod(string fieldName, string condition, string inputValue){
        integer filterDataSize = [SELECT Id, Name, User_ID__c, Filed_Name__c, Field_Condition__c, Field_Value__c 
                                  FROM Account_Filter_Data__c
                                  WHERE User_ID__c = :UserInfo.getUserId()].size();
        
        if(filterDataSize == 0){
            Account_Filter_Data__c saveFilterData = new Account_Filter_Data__c(User_ID__c=UserInfo.getUserId(),
                                                                               Filed_Name__c = fieldName,
                                                                               Field_Condition__c = condition, 
                                                                               Field_Value__c = inputValue);
            Insert saveFilterData;
            
        }else{
            
            Account_Filter_Data__c updateUserFilterData = [SELECT Id, Name, User_ID__c, Filed_Name__c, Field_Condition__c, Field_Value__c 
                                                           FROM Account_Filter_Data__c
                                                           WHERE User_ID__c = :UserInfo.getUserId()];
            updateUserFilterData.Filed_Name__c = fieldName;   
            updateUserFilterData.Field_Condition__c = condition;
            updateUserFilterData.Field_Value__c = inputValue;
            
            update updateUserFilterData;
        }
    }
    
    public class accountWrapperClass{
        @auraEnabled
        public list<account> acctsList {get;set;}
        @auraEnabled
        public boolean showFilterBlock {get;set;}
        @auraEnabled
        public string fieldName {get;set;}
        @auraEnabled
        public string filterCondition {get;set;}
        @auraEnabled
        public string inputValue {get;set;}
        
        public accountWrapperClass(){
            acctsList = new list<account>();
            showFilterBlock = false;
        }
    }
}
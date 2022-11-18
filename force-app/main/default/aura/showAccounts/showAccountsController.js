({
    loadAccounts : function(component, event, helper) {
        //debugger;
        console.log('in show Accounts ctlr loadAccounts');
        helper.fetchAccounts(component, event);
    },
    
    getFilteredRecords: function(component, event, helper) {
		helper.getFilteredRecordsHelper(component, event);
        
    },
    
    removeFilterNloadAllAccounts : function(component, event, helper) {
        
        if(component.get('v.parentLoadAllAccounts') == true){
            console.log('in show Accounts ctlr removeFilterNloadAllAccounts');
            var action = component.get('c.filteredAccountsMethod');
            
            action.setParams({
                "fieldName": ' ',
                "condition": ' ',
                "inputValue": ' '
            });
            
            action.setCallback(this, function(actionResult){
                component.set('v.accountsWrapper', actionResult.getReturnValue());
            });
            
            $A.enqueueAction(action);
        }

    }
})
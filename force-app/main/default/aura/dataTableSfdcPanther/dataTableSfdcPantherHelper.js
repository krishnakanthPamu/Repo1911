({
    columnsandquickactionsdefinitions : function(component){
        var actions=[{ label:'Show Details', name:'show_details', iconName:'action:preview' },
                     { label:'Delete', name:'delete', iconName:'action:delete'}
                    ];
        component.set('v.columns', [{label:'Record Id', fieldName:'Id', type:'Id'},
                                    {label:'Name', fieldName:'Name', type:'text'},
                                    {type: 'action', typeAttributes: { rowActions: actions }}
                                   ]);
    },
    
    getOpportunityList : function(component) {
        var action = component.get('c.getOpportunities');
        action.setCallback(this, function(response) {  
            var state = response.getState();
            if (state === "SUCCESS" ) {
                var Opplist = response.getReturnValue();
                component.set("v.oppList",Opplist);
            }else if (STATE=== 'ERROR'){
                var errors = response.getError();
                if(errors){
                    if(errors[0] && errors[0].message()){
                        alert('Error while Fetching. Path: Helper: dataTableSfdcPantherHelper > getOpportunityList');
                    }
                }
            }
        });
        $A.enqueueAction(action);
    },
    
    deleteOpportunity : function(component, row){
        var jsOppList = component.get('v.oppList');
        var index = jsOppList.indexOf(row);
        jsOppList.splice(index, 1);
        component.set('v.oppList', jsOppList);
        
        
        console.log('row:---> ', row); 
        var jsDeletedRecordsIds  = component.get('v.deletedRecordsIds');
        console.log('dd rows: ', jsDeletedRecordsIds);
        console.log('dd row id: ' , row.Name);
        jsDeletedRecordsIds.push(row.Id);
        console.log('js dd: ', jsDeletedRecordsIds);
        component.set('v.deletedRecordsIds', jsDeletedRecordsIds);      
    },
    
    doSaveHelper : function(component, event){
        var action = component.get('c.deleteOpportunities');
        action.setParams({
            deletedOppsIds : component.get('v.deletedRecordsIds')
        });
        action.setCallback(this, function(response) {  
            var state = response.getState();
            if (state === "SUCCESS" ) {
                var Opplist = response.getReturnValue();
                component.set("v.oppList",Opplist);
                //show Toast message or use an Alert
                alert('Records got deleted successfully and updated new opportunities..! ')
            } else if(state ==="ERROR") {
                var errors = response.getError();
                if(errors){
                    if(errors[0] && errors[0].message){
                        console.log('errors[0].message: ', errors[0].message);
                        alert('Error: ', errors[0].message);
                    }
                }
            } else {
                console.log('unkown Error');
            }
        });
        $A.enqueueAction(action);
    },
})
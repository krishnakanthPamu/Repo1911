({
	helperCheckboxFunction : function(compt, helper) {
        
        console.log('this text is from Helper Log');
        var testCheckedBox = compt.find("checkboxId1").get("v.checked");
        console.log(compt.get('v.weekendsAttend'));
        if(testCheckedBox== 'true'){
            compt.set('v.weekendsAttend', testCheckedBox); 
            
        }
        else{
            compt.set('v.weekendsAttend', testCheckedBox);
        }
        console.log('after click: '+compt.get('v.weekendsAttend'));
	}
})
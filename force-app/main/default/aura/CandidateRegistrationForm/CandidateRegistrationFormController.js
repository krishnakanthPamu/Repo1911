({
	abcd : function(cpmt, evt, helpr) {
        var x = cmpt.get("v.studentName"); 
        
        if (x=='Krishnakanth'){
            alert('submit is working...! You have entered: Krishanakanth');
            cmpt.set('v.studentName', 'Pamu');
        }
        else{
            alert('submit is working...! You have entered other than Krishanakanth');
            cmpt.set('v.studentName', 'Krishnakanth');
        }
	},
    
    myCheckboxAction:function(cmpt2, event2, helper2){
        console.log("This text is from Controller");
    	helper2.helperCheckboxFunction(cmpt2,event2);
	},
    
	showEducationFunction:function(c1, e1, h1){
        console.log("control came to 'showEducationFunction' of 'CandidateRegistrationForm Component' ");
        var eList = c1.get('v.educationalDetailsList');
        var listSize = parseInt(eList.length) + 1;
        //console.log('initially original: ' + c1.get('v.educationalDetailsList'));
        //console.log('initially eList: ' + eList);
        eList.push(listSize);
        //console.log('after pushing size eList : '+eList);
        //console.log('after pushing size eList size: '+eList.length);
        //console.log('after setting original: ' + c1.get('v.educationalDetailsList'));
        c1.set('v.educationalDetailsList', eList);
        //console.log('after set eList: ' + eList);
        //console.log('after set original: ' + c1.get('v.educationalDetailsList'));
}
})
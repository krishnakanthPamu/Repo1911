({
	deleteEducationDetails : function(c1, e1, h1) {
		var a = c1.get('v.educationDetailsComponentList');
        console.log("ctrl in 'deleteEducationDetails' Component");
        var currentIndex = c1.get('v.indexNo');
        console.log('current index number'+ currentIndex);
        
        if(currentIndex > -1)
        a.splice(currentIndex,1);
        
        c1.set('v.educationDetailsComponentList', a);
	},
    
    doInit:function(c2, e2, h2){
        console.log('This text is from doInit Function');
        c2.set("v.collegeName", "Pre filling is doing using 'init' handler from 'EducationDetails' component which call 'EducationDetailsController'");
        h2.rectifyIndexNumber (c2, e2, h2);
    },
    
    doChangeFunction:function(c3, e3, h3){
    	console.log("ctrl in 'doChangeFunciton' of 'EducationDetails' component");
        h3.rectifyIndexNumber (c3, e3, h3);
	},
    
    
})
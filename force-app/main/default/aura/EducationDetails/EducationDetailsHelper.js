({
	rectifyIndexNumber : function(c1, e1, h1) {
        console.log("ctrl in 'EducationDetailsHelper'");
		var a = c1.get('v.indexNo');
        var b = parseInt(a) + 1;
        c1.set('v.sequenceNo', b);
	}
})
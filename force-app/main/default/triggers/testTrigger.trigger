trigger testTrigger on Account (after insert, after update) {
    for(account a: trigger.new){
        if(a.Industry=='Energy'){
            a.Rating='Hot';
        }
    }

}
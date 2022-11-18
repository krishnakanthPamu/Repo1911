public class StringArrayTest {
    
    public static list<string> generateStringArray (integer n){
        list<string> StList = new List<String>();
        for (integer i=0; i<n; i++){
            StList.add('Test ' + i);
        }
        system.debug('strings:'+StList);
        return StList;
    }

}
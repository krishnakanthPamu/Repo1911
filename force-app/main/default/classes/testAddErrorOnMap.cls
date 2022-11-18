public class testAddErrorOnMap {
    
    public static void f1(){
        map<id,account > a = new map<id, account>([select name, id from account where id='0016F00003hglLIQAY']);
		system.debug('a'+a);
    }

}
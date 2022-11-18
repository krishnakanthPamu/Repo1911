public class testFuture1 {

    public static void m1(){
        System.debug('test in m1');
        if(system.isBatch() || system.isFuture()){
        	testFuture1.m2();
        }
    }
    
    public static void m2(){
        System.debug('in m2');
    }
    
    @future
    public static void m3(){
		testFuture1.m2();
    }
    
}
public class MixedDmlSolution {

    public static void function1(){
        
        MixedDmlFuture.AddUser();
        Account a;
        a = new Account(name='Acme');
        insert a;
    }
}
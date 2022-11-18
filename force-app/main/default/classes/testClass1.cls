public class testClass1 {
    public static void method1(){
        

        list<account> accountsList = [SELECT Id, Name FROM Account WHERE  name = 'vamshi test' limit 2];
        for(account single : accountsList )
        {

        }
    }

}
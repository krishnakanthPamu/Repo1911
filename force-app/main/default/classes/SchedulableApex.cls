public class SchedulableApex implements Schedulable{
    public static void execute(schedulableContext context){
        account a = new account(name='Test Schedulabe Class');
        insert a;
    }

}
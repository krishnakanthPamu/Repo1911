public class QueueableApex implements Queueable {
    
    public static void execute(queueableContext context){
        account a = new account(name='Test Queueable Apex Class');
        insert a;
    }

}
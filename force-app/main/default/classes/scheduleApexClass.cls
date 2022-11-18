public class scheduleApexClass implements schedulable{
    public static void execute(schedulableContext sc){
        account acct = new account(name='test account check schedule' , phone='12345');
        insert acct;
    }
}
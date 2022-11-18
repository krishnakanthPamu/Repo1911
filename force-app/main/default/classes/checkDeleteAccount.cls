public class checkDeleteAccount {
    public static void method1(list<account> newAccts, list<account> oldAccts ){
        for(account a: oldAccts){
           // if(a.name=='test account'){
                a.addError('Name', 'You cannot delete the record1');
            //}
        }
    }
}
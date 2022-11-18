@isTest
public class TestVerifyDate {

    @isTest  static void function1(){
        date date1 = date.today();
        date date2 = date.today() + 29;
        date resultdate = VerifyDate.CheckDates(date1, date2);
        system.assertEquals(resultdate, date2);
    }
    
    public static testMethod void function2(){
        date date1=date.today();
        date date2=date.today()+31;
        date returnDate = VerifyDate.CheckDates(date1, date2);
        system.assertEquals(returnDate, date1+7);
    }
    
        public static testMethod void function3(){
        date date1=date.today();
        date date2=date.today()-2;
        date returnDate = VerifyDate.CheckDates(date1, date2);
        system.assertEquals(returnDate, date1+7);
    }
}
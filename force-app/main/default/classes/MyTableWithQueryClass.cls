public class MyTableWithQueryClass {
    
    public static list <contact> ContactList{set;get;}
    
    public MyTableWithQueryClass(){
        ContactList = null;
    }

    public static void ShowData(){
        ContactList = [SELECT Name, MailingCity, Phone FROM Contact WHERE Phone<>null Limit 10];
    }
}
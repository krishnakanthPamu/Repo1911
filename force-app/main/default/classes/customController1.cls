public with sharing class customController1 {
    public static list<account> aList {set;get;}
    public static string temp {set;get;}

    public static string contactList{set;get;}
    public static string firstName {set;get;}
    public static string lastName {set;get;}
    public static string fullName{set;get;}
    public  customController1(){
     aList = null;
     contactList = null;   
    }
    
    public static void showFullname(){
        fullName = firstname + ' ' + lastName;
    }
    

    public static void resetFields(){
        fullname = ' ';
        
    }
    
    public static void showTable(){
        aList = [select id, name from account where name<>null  ORDER BY Name DESC limit 5];
    }
}
public with sharing class class3 {

    
    public static string FirstName{set;get;}
    public static string LastName{set;get;}
    public static string FullName{set;get;}
    public static string Message{set;get;}
    
    public class3(apexPages.standardController stdController){
    
    }
    
    public void showFullName(){
        FullName =  FirstName +' ' + LastName;
        system.debug('From Class 3');
    }
    
    public void showMessage(){
        Message = 'From Class3';
    }
}
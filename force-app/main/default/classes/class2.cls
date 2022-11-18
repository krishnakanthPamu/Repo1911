public with sharing class class2 {

    
    public static string FirstName{set;get;}
    public static string LastName{set;get;}
    public static string FullName{set;get;}
     public static string Message{set;get;}
     
    public class2(apexPages.standardController stdController){
    
    }
    
    public void showFullName(){
    

        FullName =  FirstName +' ' + LastName;
        system.debug('From Class 2');
    }
    
        public void showMessage(){
        Message = 'From Class2';
    }

}
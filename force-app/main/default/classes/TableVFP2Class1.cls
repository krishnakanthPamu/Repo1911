public with sharing class TableVFP2Class1 {
    
    public static List<contact> ContactsList {set;get;}
    
    public TableVFP2Class1(){
        ContactsList = null;
    }
    
    public static void showContacts() {
       ContactsList = [SELECT Id, Name, Phone FROM contact ORDER BY Name LIMIT 10];
    }
}
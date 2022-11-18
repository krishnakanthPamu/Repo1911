public with sharing class TestVFP2Class {
    
    public string FirstName{set;get;}
    public string LastName{set;get;}
    public string FullName{set;get;}
    public string EmailName{set;get;}
    
    
    
    public void showFullName(){
        FullName= FirstName + ' ' + LastName;
    }
    public void showEmailName(){
        EmailName= FirstName + '.' + LastName + '@gmail.com';
    }
    public void resetMethod(){
        FullName= ' ';
        EmailName=' ';
    }
    
}
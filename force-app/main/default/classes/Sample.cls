public with sharing class Sample {
    public string message1 {set; get;}
    public string message2 {set;get;}
    
    public Sample (){
        message1='from constructor';
        system.debug('from constructor');
    }
    public String mem { 
           get{return 'getter string';} 
           set; 
           
    }

    public static void FunctionA() {
        system.debug('from funciton A');
    }

}
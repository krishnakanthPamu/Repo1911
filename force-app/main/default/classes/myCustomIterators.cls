global class myCustomIterators 
   implements Iterator<Account>{ 

   List<Account> accs {get; set;} 
   Integer i {get; set;} 

   public myCustomIterators(){ 
       accs = 
       [SELECT Id, Name, 
       NumberOfEmployees 
       FROM Account 
       WHERE Name like 'c%']; 
       i = 0; 
   }   

   global boolean hasNext(){ 
       if(i >= accs.size()) {
           return false; 
       } else {
           return true; 
       }
   }    

   global Account next(){ 
       // 8 is an arbitrary 
       // constant in this example
       // that represents the 
       // maximum size of the list.
       if(i == 2){return null;} 
       i++; 
       //system.debug(accs[i-1]);
       return accs[i-1]; 
   } 
}
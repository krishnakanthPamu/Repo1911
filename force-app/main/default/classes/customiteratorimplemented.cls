global class customiteratorimplemented implements iterable<Account>{
   global Iterator<Account> Iterator(){
      return new myCustomIterators();
   }
}
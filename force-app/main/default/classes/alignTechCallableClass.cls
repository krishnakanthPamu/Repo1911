public class alignTechCallableClass implements Callable {
     
    //Method 1
    public String method1(String stringValue) {
        return 'Welcome ' + stringValue;
    }
     
    //Method 2
    public Decimal method2(Integer integerValue) {
        return integerValue + 100;
    }
     
    //Callable interface method
    public Object call(String action, Map<String, Object> args) {
        switch on action {
            when 'method1' {
                return this.method1((String)args.get('stringValue'));
            }
            when 'method2' {
                return this.method2((Integer)args.get('integerValue'));
            }
            when else {
                return null;
            }
        }
    }
}
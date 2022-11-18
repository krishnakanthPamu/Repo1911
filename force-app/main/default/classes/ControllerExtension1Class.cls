public class ControllerExtension1Class{

    public string AccountName{set;get;}

    public ControllerExtension1Class(apexPages.StandardController StdController){
            
    }
    
    public void CustomSave(){
        Account a = new Account();
        a.Name = AccountName;
        
        Insert a;
    }
    
}
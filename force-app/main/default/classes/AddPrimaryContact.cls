public class AddPrimaryContact implements Queueable {  
   public Contact con;  
   public String state;  
      public AddPrimaryContact(Contact con, String state)  
   {  
     this.con = con;  
     this.state = state;  
   }  
   public void execute(QueueableContext qc)  
   {  
     List<Account> accList = [SELECT Id, Name, BillingState FROM Account WHERE Account.BillingState =: this.state Limit 200];  
     List<Contact> newContact = new List<Contact>();  
     for(Account acc : accList)  
     {  
       Contact con = new Contact();  
       con = this.con.clone(false, false, false, false);  
       con.AccountId = acc.Id;  
       newContact.add(con);  
     }  
     insert newContact;  
   }  
 }
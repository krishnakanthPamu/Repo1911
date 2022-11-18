public class AccountProcessor {  
//   @future  
   public static void countContacts()  
   {  
     List<Account> accList = [SELECT ID, Name, Number_Of_Contacts__c, (SELECT ID From Contacts)FROM Account WHERE ID = '0016F00003dvBRu']; 
                              //IN :conId];  
     for(Account acc : accList)  
     {  
       //List<Contact> conList = acc.Contacts;  
       //acc.Number_Of_Contacts__c = conList.Size(); 
       system.debug('acc.Contacts.size()'+acc.Contacts.size()); 
     }  
     update accList;  
   }  
 }
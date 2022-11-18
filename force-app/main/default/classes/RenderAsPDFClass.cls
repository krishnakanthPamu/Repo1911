public class RenderAsPDFClass {
	
    public  list<contact> ContactsList{set;get;}
    
    public RenderAsPDFClass(){
        ContactsList =null;
    }
    
    public void ShowContacts(){
        ContactsList = [SELECT Name, Phone, MailingCity FROM Contact];
    }
}
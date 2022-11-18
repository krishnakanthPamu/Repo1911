public class renderedClass {
    
    public string FirstName{set;get;}
    public string LastName{set;get;}
    public string UserName{set;get;}
    public list<contact> contactList{set;get;}
    
    public void ShowUser() {
        UserName = FirstName + LastName;
    }
	
    public renderedClass() {
        contactList = null;
    }
    
    public void ShowContacts() {
        contactList =[SELECT Name, Phone FROM Contact];
    }
}
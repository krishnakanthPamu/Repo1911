public class RandomContactFactory {
    
    public static list<contact> generateRandomContacts(integer numberOfContact, String lastName){
        list<contact> ContactsList = New List<Contact>();
        for(integer i=0; i<numberOfContact; i++){
            contact c = new contact();
            c.LastName= lastName;
            c.FirstName = 'Test' + ' ' + i;
            ContactsList.add(c);
        }
        return ContactsList;
    }

}
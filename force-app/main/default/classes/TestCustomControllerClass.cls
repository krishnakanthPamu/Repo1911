public with sharing class TestCustomControllerClass {
    	public string   FirstName{set;get;}
        public string   LastName{set;get;}
        public string	FirstNameMessage{set;get;}
        public string	FullNameMessage{set;get;}
    public void DisplayFirstName(){
        FirstNameMessage = FirstName;
    }

    public void DisplayFullName(){
        FullNameMessage = FirstName + ' ' +LastName;
    }

}
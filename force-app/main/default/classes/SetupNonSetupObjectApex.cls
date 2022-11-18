public class SetupNonSetupObjectApex {

    Public static void Function1(){

        User a = [SELECT Id, Name, CompanyName  from user where Name='29042020 CreatedFromApex1'];
        a.CompanyName = 'abcd';
        
        update a;

        Indeed_com_AppForm__c Record2 = New Indeed_com_AppForm__c();
        Record2.Name = 'Test Setup Object';  // Will give error
        //Record2.User__c = a.Id;
        Insert Record2;
        
/*
//Username, Last Name, Email, Alias, Time Zone, Locale, Email Encoding, Profile, Language
  
        User Record1 = New User();
        Record1.Title = 'APEX Code: SetupNonSetupObjectApex';
        Record1.Username ='CreatedFromApex2904202008000@sf.com';
        Record1.FirstName = '29042020';
        Record1.LastName = 'CreatedFromApex';//Not compulsory field
        Record1.Email='Krishnakanth.pamu@gmail.com';
        Record1.Alias = 'ijkr1';
        Record1.TimeZoneSidKey = 'GMT';
        Record1.LocaleSidKey = 'en_US';
        Record1.EmailEncodingKey = 'UTF-8';
        Record1.ProfileId = '00e6F000003VLwa';
        Record1.LanguageLocaleKey = 'en_US';//System
      
        Insert Record1; 
*/
        
/*
User u = new user();
u.LastName = 'Test Code';
u.Email = 'test@test.com';
u.Alias = 'Tcode';
u.Username = 'test1234444@test.com';
u.CommunityNickname = 'test12';
u.LocaleSidKey = 'en_US';
u.TimeZoneSidKey = 'GMT';
u.ProfileID = '00e90000000oyi5';
u.LanguageLocaleKey = 'en_US';
u.EmailEncodingKey = 'UTF-8';
insert u;
*/      
     
        
    }
}
@isTest
public class AnimalLocatorTest {
    
    @isTest
    public static void testAnimalbyId(){
        
       test.setMock(httpCalloutMock.class, new AnimalLocatorMock());
       
       string AnimalName= AnimalLocator.getAnimalNameById(2);
       
       system.assertEquals('bear', AnimalName, 'Response is not as expected');
           
       
    }
    

}
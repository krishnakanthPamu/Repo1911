@isTest
public class ParkLocatorTest {
    @isTest
    public static void CountryTest(){
        test.setMock(WebserviceMock.class, new ParkServiceMock());
        string[] actualParkNames = ParkLocator.country('India');
        string[] ExpectedParkNames = new string[]{'Anamudi Shola National Park', 'Anshi National Park', 'Bandipur National Park'};
        system.assertEquals(expectedParkNames, actualParkNames,
                            'Park Names in india are not matching with the response received');
    }

}
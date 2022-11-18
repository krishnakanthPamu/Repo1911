public class ParkLocator {
    
    public static string[] country(string a){
        ParkService.ParksImplPort ParkLocateInCountry = new ParkService.ParksImplPort();
        
        return ParkLocateInCountry.byCountry(a);
    }

}
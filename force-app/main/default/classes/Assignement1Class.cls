public class Assignement1Class 
{    
    Public static void Assignment1Function (List<Indeed_com_AppForm__c> FormsList)
    {
        For(Indeed_com_AppForm__c i: FormsLIst)
        {
            if(i.Age__c > 30 && i.Experience__c > 8)
            {
                i.Job_Status__c = 'Selected';
            }
        }
    }

}
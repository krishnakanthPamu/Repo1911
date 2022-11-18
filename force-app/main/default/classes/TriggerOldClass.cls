Public Class TriggerOldClass
{
    Public Static Void Function1(List<Indeed_com_AppForm__c> abcd)
    {
        for(Indeed_com_AppForm__c n : abcd )
        {
            system.debug('New: ' + n.Gender__c);
        }
    }
}
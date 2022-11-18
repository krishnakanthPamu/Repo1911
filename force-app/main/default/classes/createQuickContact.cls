public class createQuickContact {
    @auraEnabled
    public static contact createQuickContactMethod (contact cont, id acctId){
        if(cont != null){
            cont.AccountId = acctId;
            system.debug('acctId; '+acctid);
            insert cont;
        }
        return cont;
    }
}
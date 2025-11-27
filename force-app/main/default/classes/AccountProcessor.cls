public class AccountProcessor {
    @future
public static void countContacts(List<Id> accId)
{
    List<Account> accList=new List<Account>();
    for(AggregateResult conResult:[Select AccountId,Count(Id) TotalContact from Contact where AccountId In : accId group by AccountId])
    {
        Account acc=new Account(Id=(Id)conResult.get('AccountId'),Number_Of_Contacts__c=Integer.valueOf(conResult.get('TotalContact')));
        accList.add(acc);
        
    }
    Update accList;
}
}
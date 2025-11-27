@IsTest
public class AccountProcessorTest {
     
    public static testmethod void TestAccountProcessorTest(){
      
        // creating account
        Account acc = new Account(Name='Avi');
        insert acc;
        // creating contact for the account
        Contact cont1 = new Contact(LastName='Avi1',AccountId=acc.Id);
        insert cont1;
        // creating 2nd contact for account
        Contact cont2 = new Contact(LastName='Avi2',AccountId=acc.Id);
        insert cont2;
        // List to store all Ids
        List<Id> totalIds =new List<Id>();
        totalIds.add(acc.Id);
        
        // Aggregate Result is a read-only sObject that can store the result of the query
        List<AggregateResult> conResult=new List<AggregateResult>();
        
        Test.startTest();
        AccountProcessor.countContacts(totalIds);
        //conResult =[SELECT Count(Id)cn FROM Contact WHERE Account.Id=:acc.Id];
        Test.stopTest();
        
        //System.assertEquals(2,conResult[0].get('cn'));         
       
  }
}
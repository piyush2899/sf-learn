public class ContactController {
 @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(String Name) {
        throw new AuraHandledException('Forced error');
       
    }
}